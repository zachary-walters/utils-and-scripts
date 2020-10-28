#!/usr/bin/env python3

import os
import zipfile
from argparse import ArgumentParser
from utils.gdrive.gdrive import Gdrive


def zipdir(path, ziph):
  for root, dirs, files in os.walk(path):
    for file in files:
      ziph.write(os.path.join(root, file))


def upload_file(file, name):
  file_name = name if name else file

  if not os.path.exists(file):
    exit("File: {} does not exist".format(file))

  gdrive = Gdrive()
  gdrive.auth()

  file_to_upload = gdrive.drive.CreateFile()

  if os.path.isfile(file):
    file_to_upload.SetContentFile(file)
  else:
    zipf = zipfile.ZipFile('{}.zip'.format(file_name), 'w', zipfile.ZIP_DEFLATED)
    zipdir(file, zipf)
    zipf.close()
    file_to_upload.SetContentFile('{}.zip'.format(file_name))

  file_to_upload.Upload()

  print("{} has been successfully uploaded to Google Drive".format('{}.zip'.format(file_name)))


if __name__ == "__main__":
  arg_parser = ArgumentParser(description="Upload content to Google Drive")

  arg_parser.add_argument('-f', '--file', default=None, required=True, help='File or folder to upload')
  arg_parser.add_argument('-n', '--name', default=None, required=False, help='What you want to name uploaded file')
  arguments = arg_parser.parse_args()

  upload_file(arguments.file, arguments.name)