#!/bin/bash

function parse_yaml() {
    local prefix=$2
    local s
    local w
    local fs

    s='[[:space:]]*'
    w='[a-zA-Z0-9_\-]*'
    fs="$(echo @|tr @ '\034')"

    cat "$1" |
    sed 's/\"/\\\"/g' |
    sed -ne "s|^\($s\)\($w\)$s:$s\"\(.*\)\"$s\$|\1$fs\2$fs\3|p" \
        -e "s|^\($s\)\($w\)$s[:-]$s\(.*\)$s\$|\1$fs\2$fs\3|p" |
    awk -F"$fs" '{
        indent = length($1)/2;
        vname[indent] = $2;
        for (i in vname) {if (i > indent) {delete vname[i]}}
            if (length($3) > 0) {
                vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
                printf("%s%s%s=(\"%s\")\n", "'"$prefix"'",vn, $2, $3);
            }
        }' |
    sed 's/_=/+=/g'
}

function create_variables() {
    local yaml_file="$1"
    eval "$(parse_yaml "$yaml_file")"
}

