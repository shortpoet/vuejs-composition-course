#!/bin/sh
Green="\033[0;32m"
BrownOrange="\033[0;33m"

set -e

echo -e "${Green}The alpine Client Dockerfile ${BrownOrange}ENTRYPOINT ${Green}has been executed!"

# export MY_DIR="${PWD:2}"

exec "$@"
