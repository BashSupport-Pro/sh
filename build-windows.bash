#!/bin/bash

set -e
export CGO_ENABLED=0

export LDFLAGS="-s -w -extldflags -static -X main.version=$(git describe --always --dirty)"
go build -o shfmt_windows_amd64.exe -trimpath -ldflags "$LDFLAGS" -o "/build/shfmt_linux_amd64" ./cmd/shfmt