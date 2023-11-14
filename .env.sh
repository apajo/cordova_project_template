#!/bin/bash

# export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_HOME="/media/apajo/data/tools/android-sdk" # /usr/lib/android-sdk/
export ANDROID_SDK_ROOT="/media/apajo/data/tools/android-sdk"

export ORG_GRADLE_PROJECT_cdvMinSdkVersion=21
export CORDOVA_ANDROID_GRADLE_DISTRIBUTION_URL=https\://services.gradle.org/distributions/gradle-7.4.2-all.zip

export GRADLE_HOME=/opt/gradle/latest/gradle-7.6/
export PATH=${GRADLE_HOME}/bin:${PATH}

if [[ ! "$PATH" == *"$ANDROID_HOME"* ]]; then
  export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/build-tools
fi