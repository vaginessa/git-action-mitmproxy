#!/usr/bin/env bash

set -e;

if [ ! -f "test.txt" ]; then
	echo "Fucking shit, test.txt haven't been restored from cache."
	echo test > test.txt;
fi
HTTPS_PROXY=$MITMPROXY_ADDR HTTP_PROXY=$MITMPROXY_ADDR INPUT_NAME=test.txt INPUT_PATH=test.txt $artifactUploadCmd;
