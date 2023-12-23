#!/bin/bash

DESTINATION=$1

# clone Flectra directory
git clone --depth=1 https://github.com/6Ministers/n8n-docker-compose-for-business-apps $DESTINATION
rm -rf $DESTINATION/.git


