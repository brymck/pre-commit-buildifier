#!/bin/sh
if ! command -v buildifier >/dev/null 2>&1; then
    echo 'Buildifier executable not found. Attempting to install...'
    if ! command -v go >/dev/null 2>&1; then
        echo 'Go executable not found! See https://golang.org/dl/ for download options'
        exit 1
    fi
    go get github.com/bazelbuild/buildtools/buildifier
    echo 'Buildifier successfully installed!'
fi

# Run Buildifier in fix mode and print their names to standard error
buildifier -v $@
