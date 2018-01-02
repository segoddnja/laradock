#! /bin/sh

mongod --fork --logpath /var/log/mongod.log
node /usr/lib/ImageProcessor/index.js
