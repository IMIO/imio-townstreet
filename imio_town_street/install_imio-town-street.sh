#!/bin/sh
# $1 = domain (guichet-citoyen.be, ...)
set -e
USER="wcs"

domain=$1

# installation path
install_path="/usr/lib/imio_town_street"

# WCS : Get wcs tenant
wcs_tenant=$(python $install_path/get-wcs-tenant.py 2>&1)

commune=$(echo "$wcs_tenant" | sed "s/-formulaires.$domain//")

# COMBO : Get combo tenant
combo_tenant=$(echo "$wcs_tenant" | sed "s/-formulaires//")

# HOBO : Get hobo tenant
hobo_tenant=$(echo "$wcs_tenant" | sed "s/-formulaires/-hobo/")

# WCS : Create categories (Categories must be create before forms)

category_registration_number=$(ls /var/lib/wcs/$wcs_tenant/categories |  sort -n | tail -1)
sed -i 's/id="0"/id="'$(($category_registration_number + 1))'"/g' $install_path/category/0
mv $install_path/category/0 $install_path/category/$(($category_registration_number + 1))
cp $install_path/category/$(($category_registration_number + 1)) /var/lib/wcs/$wcs_tenant/categories/$(($category_registration_number + 1))
chown -R ${USER}:${USER} /var/lib/wcs/$wcs_tenant/categories/$(($category_registration_number + 1)) 

if ! [ -d /var/lib/wcs/$wcs_tenant/wscalls/ ]
then
    mkdir /var/lib/wcs/$wcs_tenant/wscalls
fi
if [ -d $install_path/wscalls/ ]
then
    cp $install_path/wscalls/* /var/lib/wcs/$wcs_tenant/wscalls
fi

# WCS : Script to import xml workflow in wcs (Workflows must be create before forms)
sudo -u  wcs wcsctl -f /etc/wcs/wcs-au-quotidien.cfg runscript --vhost=$wcs_tenant $install_path/import-workflows.py $install_path

# WCS : Script to import xml forms in wcs
sed -i 's/category_id="0"/category_id="'$(($category_registration_number + 1))'"/g' $install_path/forms/form-town-street.wcs
sudo -u  wcs wcsctl -f /etc/wcs/wcs-au-quotidien.cfg runscript --vhost=$wcs_tenant $install_path/import-forms.py $install_path

# COMBO : import town-street page (settings.json)
sed -i "s/[COMMUNE]/$commune/g" $install_path/combo/tenants/settings.json
sed -i "s/[DOMAIN]/$domain/g" $install_path/combo/tenants/settings.json
cp $install_path/combo/tenants/settings.json /var/lib/combo/tenants/$combo_tenant/
sed -i "s/$commune/[COMMUNE]/g" $install_path/combo/tenants/settings.json
sed -i "s/$domain/[DOMAIN]/g" $install_path/combo/tenants/settings.json

# COMBO : import AES portail-citoyen structure
sudo -u combo combo-manage tenant_command import_site -d $combo_tenant $install_path/combo/combo-town-street.json

