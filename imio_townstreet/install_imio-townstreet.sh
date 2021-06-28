#!/bin/sh

set -e # Exit immediately if a command exits with a non-zero status.

# setup passerelle connector
FILE=/etc/passerelle/settings.d/atal.py
if test -f "$FILE"; then
    echo "$FILE already exists. This is what we want so that's fine !"
else
    echo "$FILE does not exist yet so I'm gonna create it and reboot passerelle..."
    cp $(pwd)/atal.py /etc/passerelle/settings.d/ && service passerelle restart
fi

# installation path
install_path="/usr/lib/imio_townstreet"

sudo -u hobo hobo-manage imio_indus_deploy --directory $install_path
