#!/bin/bash

# Uses tail as default.
if [ "${1#-}" != "$1" ]; then
	set -- tail "$@"
fi

