#!/bin/bash

# Uses tail as default.
if [ "${1#-}" != "$1" ]; then
	set -- tail "$@"
fi

function print_usage {
  echo
  echo "Usage:"
  echo "  [OPTIONS]"
  echo
  echo "Options:"
  echo "  -f, --file string               Log file be tailed to stdout"
  echo "  -a, --add                       Add \"m h dom mon dow user command\" line as a cron rule"
  echo
  echo "  -h, --help                      Print this message"
  echo
}

function add_cron {
  echo "$1" >> "/etc/crontab"
}

if [ "$1" != "tail" ]; then
  exec "$@"
fi

shift
OPTIONS=`getopt -o f:a:h --long file:,add:,help -n cron -- "$@"`
if [ $? -ne 0 ]; then
  print_usage
  exit 1
fi

eval set -- "$OPTIONS"
while true; do
  case "$1" in
    -f|--file)        CRON_FILE="$2";       shift 2;;
    -a|--add)         add_cron "$2";        shift 2;;
    --)                                     shift; break;;
    -h|--help)        print_usage;          exit 0;;

    *)
      echo "Unexpected argument: $1"
      print_usage
      exit 1;;
  esac
done

if [ -z "$CRON_FILE" ]; then
  CRON_FILE="/var/log/cron.log"
fi

if [ ! -f "$CRON_FILE" ]; then
  touch "$CRON_FILE"
fi

cron

tail -f "$CRON_FILE"