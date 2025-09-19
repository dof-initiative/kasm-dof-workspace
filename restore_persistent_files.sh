#!/usr/bin/env bash

################################################################
#
# See reset_kasm_user.sh for how to use this script
#
################################################################

# move persistent files back to kasm_user/
while read -r line; do
    rsync -avh kasm_user_backup/$line kasm_user && rm -rf kasm_user_backup/$line
done < files_to_persist.txt
