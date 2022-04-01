#!/bin/bash

OUTPUT=$(crystal build platform/host.cr --no-color 2>&1);
LAST_LINE=$(echo $OUTPUT | tail -n 1)

if [[ $OUTPUT =~ ^.*-rdynamic[[:space:]](.*)\`$ ]]
then
  echo "${BASH_REMATCH[1]}"
else
  echo "Unable to extract flags from:"
  echo $OUTPUT
  exit 1
fi
