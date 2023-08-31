#!/bin/bash

if ! command -v task; then
	sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /usr/local/bin
fi

task install-tools
