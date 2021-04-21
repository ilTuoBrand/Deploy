#!/bin/sh -l

set -eou pipefail

filename=$1

if test -f "$filename"; then
    content=$(cat "$filename")
else
    echo "Version file not found"
    exit 1;
fi

git fetch --tags --force
latestVersionTag=$(git describe --tags "$(git rev-list --tags --max-count=1)");
echo "File Content: $content"
echo "Updating Version To: $latestVersionTag"
updatedContent=$(cat "$filename" | sed "s/\${VERSION}/$latestVersionTag/g")
echo "Updated Content: $updatedContent"
echo "$updatedContent" > "$filename"

git-ftp push \
  --syncroot $INPUT_SYNCROOT \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_OPTIONS \
  $INPUT_URL
