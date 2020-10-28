#!/usr/bin/env python3

import os
from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

MODULE_PATH = str(os.path.abspath(__file__)).replace('gdrive.py', '')

class Gdrive:
  def __init__(self):
    self.gauth = GoogleAuth()
    self.drive = None
    self.gauth.DEFAULT_SETTINGS['client_config_file'] = '{}client_secrets.json'.format(MODULE_PATH)

  def auth(self):
    print()
    self.gauth.LoadCredentialsFile("{}creds.txt".format(MODULE_PATH))
    if self.gauth.credentials is None:
      self.gauth.LocalWebserverAuth()
    elif self.gauth.access_token_expired:
      self.gauth.Refresh()
    else:
      self.gauth.Authorize()

    self.gauth.SaveCredentialsFile("{}creds.txt".format(MODULE_PATH))

    self.drive = GoogleDrive(self.gauth)
