#!/bin/sh

sed -i "s#\(\"port\":\).*,#\1 "${PORT-9090}",#" cfg/nodecg.json &&\
node index.js


