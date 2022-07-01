#!/bin/bash

echo '{
  "NotebookApp": {
    "password": "argon2:$argon2id$v=19$m=10240,t=10,p=8$EEe3E3eOMUm5oW0YoxYGng$e+aEmjZ4UY2QRw2Ax6pEoQ"
  }
}' > '/home/runner/.jupyter/jupyter_notebook_config.json'

jupyter notebook --ip=0.0.0.0 --port=3000