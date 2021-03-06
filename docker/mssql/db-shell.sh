#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
PARENT=$(dirname $DIR)
env_file="$PARENT/.env"
source $env_file
source "$PARENT/colors.cfg"

if [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    echo -e "${Cyan}The ${Yellow}postgres windows ${Cyan}shell script has been executed"
    winpty docker exec -it ${COMPOSE_PROJECT_NAME}_db.${PROVIDER}_1 bash "$@"
else 
    echo -e "${Cyan}The ${Yellow}postgres ${Cyan}shell script has been executed"
    docker exec -it ${COMPOSE_PROJECT_NAME}_db.${PROVIDER}_1 bash "$@"
fi;
