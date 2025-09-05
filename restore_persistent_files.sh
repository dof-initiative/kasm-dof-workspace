#!/usr/bin/env bash

################################################################
#
# See reset_kasm_user.sh for how to use this script
#
################################################################

# move persistent files back to kasm_user/
while read -r line; do
    mv kasm_user_backup/$line kasm_user
done < files_to_persist.txt
