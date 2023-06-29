#! /bin/bash

npm ci -f
npx cordova platform remove android
npx cordova platform add android
npx cordova plugin add cordova-plugin-device
npx cordova plugin add cordova-plugin-file
npx cordova plugin add cordova-plugin-advanced-http
