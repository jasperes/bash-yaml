#!/bin/bash

# Configure
set -e
cd $(dirname $(readlink -f $0))
source ../yaml.sh

# Debug
if [ "$1" = "--debug" ]; then
	parse_yaml file.yml && echo
fi

# Execute
create_variables file.yml

# Functions
function test_list() {
	local list=$1

	for i in ${!list[*]}; do
		[ ${list[i]} = $i ] || return 1
	done
}

# Tests
[ "$person_name" = "Jonathan" ] &&
[ "$person_age" = "99" ] &&
[ "$person_email" = "jonathan@email.com" ] &&

[ "${persons__name[0]}" = "Maria" ] &&
[ "${persons__age[0]}" = "88" ] &&
[ "${persons__email[0]}" = "maria@email.com" ] &&

[ "${persons__name[1]}" = "João" ] &&
[ "${persons__age[1]}" = "77" ] &&
[ "${persons__email[1]}" = "joao@email.com" ] &&

[ "$complex_test_simple_obj_attr" = "\"value\"" ] &&
[ "$complex_test_simple_obj_other_attr" = "other \"value\"" ] &&

test_list "$complex_test_simple_obj_a_list" &&

# Output result
echo "Tests ok!" || echo "Error on execute tests!" && exit 1
