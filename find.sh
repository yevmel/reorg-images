#!/bin/bash

ROOT=$(readlink -f $1)
HANDLE_SINGLE_IMAGE=$2
REGEX=".*.(JPG|JPEG|NEF|TIFF|DNG)"

find "$ROOT" -regextype posix-extended -iregex "$REGEX" -exec $HANDLE_SINGLE_IMAGE \;

