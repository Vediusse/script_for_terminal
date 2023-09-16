#!/bin/bash

# Переменная для домашней директории
user_home="$(cd "$(dirname "$0")" && pwd)"

rm -f Copy_3
rm -rf tmp
# shellcheck disable=SC2035
# shellcheck disable=SC2014
chmod -R 777 *

find "$user_home" -type f ! -name "script.sh" ! -name "delete_script.sh" ! -name "greeting_table.sh" -exec rm -f {} \;
find "$user_home" -mindepth 1 -type d -exec rm -rf {} \; 2>/dev/null