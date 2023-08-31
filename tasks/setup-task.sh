#!/bin/bash

if ! command -v task; then
	sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b $PWD/.local/bin
fi

.local/bin/task install-tools
