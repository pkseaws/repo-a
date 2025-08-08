#!/bin/bash
if [[ -z $0 ]]; then
echo "Argument is missing with $0"
exit 1
fi

if [[ $1 = "prod" ]]
then
    ENVN=$(awk '{ gsub(/[{},"]/,""); print $2 }' config/prod-config.json)
    DB=$(awk '{ gsub(/[{},"]/,""); print $NF }' config/prod-config.json)
    echo
    echo "Deploying on $ENVN environment using Database $DB"
elif [[ $1 = "dev" ]]
then
    ENVN=$(awk '{ gsub(/[{},"]/,""); print $2 }' config/dev-config.json)
    DB=$(awk '{ gsub(/[{},"]/,""); print $NF }' config/dev-config.json)
    echo
    echo "Deploying on $ENVN environment using Database $DB"
elif [[ $1 = "stage" ]]
then
    ENVN=$(awk '{ gsub(/[{},"]/,""); print $2 }' config/stage-config.json)
    DB=$(awk '{ gsub(/[{},"]/,""); print $NF }' config/stage-config.json)
    echo
    echo "Deploying on $ENVN environment using Database $DB"
else
    echo "Env is missing"
fi
