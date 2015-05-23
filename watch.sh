#!/bin/bash

while true
do
    base_dir="/var/www/keypass_store"
    tgt_filename=current_keypass.kdb
    latest_file=$(ls -tr ${base_dir} |grep -v "${tgt_filename}" |tail -1 |grep .kdb)
    if [ ! -z "${latest_file}" ]; then
        ln -f ${base_dir}/${latest_file} ${base_dir}/${tgt_filename}
    fi
    sleep 3
done
