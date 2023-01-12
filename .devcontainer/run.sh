#!/bin/bash

LIFECYCLE_HOOK="$1"

echo "EXECUTING HOOK: $LIFECYCLE_HOOK"

# Only works on lifecycle hooks run in the container ('initializeCommand' won't be able to find this.)
ACTION_NAME="$(cat /workspaces/.codespaces/shared/environment-variables.json | jq -r .ACTION_NAME)"

MARKER_FILE="`date +%y-%m-%d_%T.%N`-$LIFECYCLE_HOOK-$ACTION_NAME.marker"
echo $MARKER_FILE
touch $MARKER_FILE
