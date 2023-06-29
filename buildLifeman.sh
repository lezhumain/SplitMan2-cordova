#! /bin/bash

LIFEMAN="/c/Users/djuuu/Documents/Work/Projects/lifeman"

#mv src src_bk
#cp -r "$LIFEMAN/src" ./
#mv public public_bk
#cp -r "$LIFEMAN/public" ./

rm -rf build ||true
#rm -rf www
cp -r "$LIFEMAN/build" ./

export ANDROID_SDK_ROOT="/c/Program Files (x86)/Android/android-sdk"
export PATH="$PATH:/c/Gradle/gradle-7.6/bin"

npm ci
#npm run build

npm run build_cordova_android
#npx cordova run --warning-mode android

#rm -rf src
#mv src_bk src
#rm -rf public
#mv public_bk public
