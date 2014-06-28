#!/bin/bash

SCRIPT_DIR=$(dirname $BASH_SOURCE[0])

FROM=$1
TO=$2

# will be passed as value for -exec in find
HANDLE_SINGLE_IMAGE="$SCRIPT_DIR/copy-single-image.sh {} $TO"


"$SCRIPT_DIR"/find.sh "$FROM" "$HANDLE_SINGLE_IMAGE"
