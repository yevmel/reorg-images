#!/bin/bash

IMAGE=$(readlink -f $1)
TARGET_FOLDER=$(readlink -f $2)
DATE=$(exiftool $IMAGE -d "%Y-%m-%d" -p '${dateTimeOriginal}')
TARGET="$TARGET_FOLDER/$DATE"

echo "from $IMAGE to $TARGET"

mkdir -p "$TARGET"
cp -n "$IMAGE"* "$TARGET"
