Installation
============

### Prerequisites

* Unix-like OS
* GNU make file executing capability
* cordova 12
* NodeJS (>=16)
* java/javac 8~~~~
* gradle gradle-7.6

* targetSdk: 33
* sdk build tools: 32.0.3
* Android 13.0 (Tiramisu)

### Installation

Install project

```
make install
```

Setup project assets etc.
```
make setup
```


Build
============

Use `source .env` to set your environment variables.


### Error: lambda expression are not supported in -source 11

Change in build.gradle file: `JavaVersion.VERSION_1_6` to `JavaVersion.VERSION_11`

Release
============

Before releasing make sure:
* You have built the project
* Version numbers have been updated in config.xml and packages.json

```
make release
```

# Android 

## System WebView

* required WebView (or Chrome) version: >= 56

## AnimatedVectorDrawable

https://shapeshifter.design/

# Widgets



Ace plugion:
https://stackoverflow.com/questions/55774347/homescreen-widget-with-ionic-cordova-and-the-cordova-plugin-ace
