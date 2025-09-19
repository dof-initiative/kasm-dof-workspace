#!/bin/bash

################################################################
#
# Run this script after updating kasm workspace:
#
# $ docker compose pull
# $ ./reset_kasm_user
#
# Then start up kasm workspace:
#
# $ docker compose up
#
# Once new workspace is running, restore persisentent files:
#
# $ ./restore_persistent_files.sh
#
################################################################

# move files to persist from kasm_user/ into kasm_user_backup/ before purging
if [ ! -r kasm_user_backup ]; then
    mkdir -p kasm_user_backup/
fi
while read -r line; do
    mv kasm_user/$line kasm_user_backup/
done < files_to_persist.txt

# reset kasm_user
rm -rf ./kasm_user/
git restore ./kasm_user/

if [ ! -r kasm_user/Desktop/Uploads ]; then
    mkdir -p kasm_user/Desktop/Uploads
fi

docker system prune
