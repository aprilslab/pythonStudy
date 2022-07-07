#!/bin/bash

###########
# Git Settings
###########

chmod 777 -R private/
git config --global user.email "april.kim412@gmail.com"
git config --global user.name "aprilslab"
git config user.email "april.kim412@gmail.com"
git config user.name "aprilslab"
git config --global init.defaultBranch main
# git config --global credential.helper store #'store --file private/.git-credentials'
git config core.quotepath false


###########
# jupyter Settings
###########

FILE=/home/runner/.jupyter/jupyter_notebook_config.py
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    jupyter notebook --generate-config
fi

echo '{
  "NotebookApp": {
    "password": "argon2:$argon2id$v=19$m=10240,t=10,p=8$EEe3E3eOMUm5oW0YoxYGng$e+aEmjZ4UY2QRw2Ax6pEoQ"
  }
}' > '/home/runner/.jupyter/jupyter_notebook_config.json'

jupyter notebook --ip=0.0.0.0 --port=3000