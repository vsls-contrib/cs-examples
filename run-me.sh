#!/bin/bash

echo -n "I was triggered by the postcreate" >> ./postcreated.txt
echo `whoami`> whoami.txt