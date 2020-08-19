#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PARENT=$(dirname $DIR)
source "$PARENT/colors.cfg"
echo -e "${Cyan}The ${Yellow}vcc ${Cyan}build script has been executed${NC}"

docker-compose build --force-rm