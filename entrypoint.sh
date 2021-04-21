#!/bin/sh -l

git-ftp push \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_OPTIONS \
  $INPUT_URL

echo "Using FILE_DATA to write to $FILE_NAME"
echo $FILE_DATA > "$FILE_NAME"
