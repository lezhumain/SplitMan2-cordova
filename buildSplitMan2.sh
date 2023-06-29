#! /bin/bash

LIFEMAN="/c/Users/djuuu/Documents/Work/Projects/SplitMan2"

#mv src src_bk
#cp -r "$LIFEMAN/src" ./
#mv public public_bk
#cp -r "$LIFEMAN/public" ./

#mkdir -p build
if [ -d build ]; then
    rm -rf build/*
fi
cp -r "$LIFEMAN/dist/SplitMan21" ./build

export ANDROID_SDK_ROOT="/c/Program Files (x86)/Android/android-sdk"
export PATH="$PATH:/c/Gradle/gradle-7.6/bin"

npm ci
#npm run build
npm run build_cordova_android

#rm -rf src
#mv src_bk src
#rm -rf public
#mv public_bk public
