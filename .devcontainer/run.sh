#!/bin/bash

LIFECYCLE_HOOK="$1"

echo "EXECUTING HOOK: $LIFECYCLE_HOOK"

MARKER_FILE="`date +%y-%m-%d_%T.%N`-$LIFECYCLE_HOOK.marker"
echo $MARKER_FILE
touch $MARKER_FILE
