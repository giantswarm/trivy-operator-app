
function check_inner_values(){
    UPSTREAM_CHILD=$(echo $UPSTREAM_SCHEMA | jq --arg child $VALUE '.[$child]')
    if [[ "$(echo $UPSTREAM_CHILD | jq -r '.type')" == "object" ]]; then
        UPSTREAM_CHILD_KEYS=$(echo $UPSTREAM_CHILD | jq '.properties | keys[]')
        if [[ ${UPSTREAM_CHILD_KEYS[*]} =~ $VALUE ]]; then
        # whatever you want to do when array doesn't contain value
            echo "$VALUE IS part of the upstream schema, checking inner values..."
            check_inner_values 
        fi    
    fi
}


# Create temporal schema
REPO_NAME="trivy-operator"
TMP_SCHEMA=$(helm schema-gen values.yaml)

# Get upstream schemas
for REPO in $(ls charts/)
do
    # Generate schema
    UPSTREAM_SCHEMA=$(helm schema-gen charts/$REPO/values.yaml | jq '.properties')
    LOCAL_SCHEMA=$(echo $TMP_SCHEMA | jq --arg repo "$REPO" -r '.properties[$repo].properties | keys[]')
    
    UPSTREAM_KEYS=$(echo $UPSTREAM_SCHEMA | jq 'keys[]')
    for VALUE in $LOCAL_SCHEMA
    do
        if [[ ${UPSTREAM_KEYS[*]} =~ $VALUE ]]; then
        # whatever you want to do when array doesn't contain value
            echo "$VALUE IS part of the upstream schema, checking inner values..."
            check_inner_values 
        fi    
        if [[ ! ${UPSTREAM_KEYS[*]} =~ $VALUE ]]; then
        # whatever you want to do when array doesn't contain value
            echo "$VALUE is not part of the upstream schema"
        fi
    done
done

exit 0