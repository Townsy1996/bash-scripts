#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Requires log file ./log_parser.sh <logfile>" >&2
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: The input file does not exist, please choose existing file" >&2
    exit 1
fi

error_count="$(grep -c "ERROR" "$1")"

echo "There are $error_count errors detected in this log file" 
