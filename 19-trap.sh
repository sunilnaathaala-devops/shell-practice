#!=/bin/bash

set -e

trap 'echo "there is an error in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello world"
echo "I am learning"
echoo "error"
echo "all good"