actions = webr webr-w base
gulp = "node_modules/gulp-cli/bin/gulp.js"

.PHONY: $(contexts) $(actions) help res vars start webr ^ setup public sub run-emulator platforms plugins

param = $(filter-out $@,$(MAKECMDGOALS))
pwd = $(shell pwd)

help:        ## Show this help.
	@echo "All available commands:\n"
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e s/\\$$// | sed -e s/##//

#### Install & Setup ####

setup:      ## Install project
	./scripts/setup.sh

env:        ## Generate DotEnv file
	source ./.env

dev:        ## Start dev server in
	cordova run browser -- --live-reload
#	- pkill -9 -f cordova;
#	cordova run browser --live-reload --ignore="libs/**/*.*"

reset:      ## Reset project
	rm -rf node_modules
	-rm -rf plugins/*
	-rm -rf platforms
	-. cmd/removePlugins.sh

build:      ## Build project
#	./scripts/build.sh
	cordova prepare -d --verbose
	cordova build --verbose

run:
	cordova run android --verbose --debug --device

assets:
	./scripts/assets.sh
