#!/bin/bash
set -e

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PARENT=$(dirname $DIR)
filename=$(basename ${BASH_SOURCE})
dir_file="$(basename $PARENT)/$filename"
env_file="$PARENT/.env"
source $env_file
source "$PARENT/colors.cfg"

# export GREP_COLOR='31' # red
export GREP_COLOR='32' # green
# export GREP_COLOR='35' # magenta
# export GREP_COLOR='36' # cyan

echo -e "${Cyan}The ${Yellow}${COMPOSE_PROJECT_NAME} ${dir_file} ${Cyan}script has been executed${NC}"

# https://unix.stackexchange.com/questions/46562/how-do-you-colorize-only-some-keywords-for-a-bash-script
docker-compose -f docker-compose.prod.yml build --force-rm | egrep --color "\b(cache)\b|$"
