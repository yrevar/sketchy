#!/bin/bash
# Uses dl-docker by [Sai Soundararaj](https://github.com/saiprashanths)
# Maps guest port 8888 to host one for iPython notebook
# Mounts host volumes containing sketchy database and code

SKETCHY_DB="$HOME/workspace/sketchy-database/"
SKETCHY_CODE="$HOME/workspace/sketchy/"
docker run -it -p 8888:8888 -v $SKETCHY_DB:/root/sketchy-database -v $SKETCHY_CODE:/root/sketchy floydhub/dl-docker:cpu bash
