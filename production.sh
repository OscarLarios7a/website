#!/bin/bash

sudo ls > /dev/null && # early prompt for sudo password

if [[ $(whoami) == $(sudo whoami) ]] ; then
    echo "you shouldn't run me with root"
    exit 1
fi

# git pull &&

(cd server/ && yarn) &&
(cd client/ && yarn) &&

(cd client/ && npm run build) &&
(cd server/ && npm run up)
