if [[ -z $0 ]]; then
echo "Argument is missing with $0"
exit 1
fi

if [[ $1 = "prod" ]]
then
    ENVN=$(awk '{ gsub(/[{},"]/,""); print $2 }' prod-config.json)
    DB=$(awk '{ gsub(/[{},"]/,""); print $NF }' prod-config.json)
    echo
    echo "Deploying on $ENVN environment using Database $DB"
elif [[ $1 = "dev" ]]
then
    ENVN=$(awk '{ gsub(/[{},"]/,""); print $2 }' dev-config.json)
    DB=$(awk '{ gsub(/[{},"]/,""); print $NF }' dev-config.json)
    echo
    echo "Deploying on $ENVN environment using Database $DB"
elif [[ $1 = "stage" ]]
then
    ENVN=$(awk '{ gsub(/[{},"]/,""); print $2 }' stage-config.json)
    DB=$(awk '{ gsub(/[{},"]/,""); print $NF }' stage-config.json)
    echo
    echo "Deploying on $ENVN environment using Database $DB"
else
    echo "Env is missing"
fi
