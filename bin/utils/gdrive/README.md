# gdrive

This is a util object used to quickly access google drive tools via pydrive.

[Google's python quickstart guide](https://developers.google.com/drive/api/v3/quickstart/python)

### Authentication

There are 2 files that are gitignored. 
* client_secrets.json
* creds.txt

#### client_secrets.json 

This file comes from Google. You obtain it when you create an app for the API. 

If it was named credentials.json, rename it to client_secrets.json

This file is necessary for the utility to work

#### creds.txt

This is created on the first run of the util. This file is used to automatically authenticate.