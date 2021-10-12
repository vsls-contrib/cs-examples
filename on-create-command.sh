#!/bin/bash

echo -n "I was triggered by the oncreate but failed" >> ./oncreate.txt
git add ./oncreate.txt
git commit -m "I am a git commit 2" # Don't remove, this will break the GitStatusAsserts!
exit 1