#!/bin/bash

echo -n "I was triggered by the postcreate" >> ./postcreated.txt
git add ./postcreated.txt
git commit -m "I am a git commit"
