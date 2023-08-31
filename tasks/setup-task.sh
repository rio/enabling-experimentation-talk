#!/bin/bash

cd "$(dirname "$0")/.."

if ! command -v task; then
	sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b .bin
fi

.bin/task install-tools
