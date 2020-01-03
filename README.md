# imio-town-street

- E-Guichet town-street : Signalements citoyen sur la voie publique (participation citoyenne).

Installation
------------
   1. `apt install imio-town-street`
   2. `cd /usr/lib/imio-town-street`
   3. `./install_imio-town-street.sh DOMAIN (guichet-citoyen.be, lescommunes.be,example.Net,...)`

Configuration
-------------

    combo (config filesystem) : In THEME (imio-publik-themes) (static/[COMMUNE]/), don't forget to add default map position in config.json : "settings" section.
        "settings": {
            "combo": {
                "COMBO_MAP_DEFAULT_POSITION": {
                    "lat": "xx.xxxxx",
                    "lng": "y.yyyyy"
                }
            }
         }

    combo (config backoffice) : In (citizen) Portal > Maps : There are maps layers. Don't forget to update them with good geojson url
        sample : https://[COMMUNE]-formulaires.[DOMAIN]/api/forms/[FORM_SLUG]/geojson?filter=all&email=[USER_MAIL@WITH_RIGHTS_ON_FORM]&filter-[FIELD_ID]=on&filter-[FIELD_ID]-value=[FIELD_VALUE]
                 
        sample field value : Avaloir+-+Taque
        sample field id : 56


   To limit scope of map on the city, you must set 2 variable in wcs site-options.cfg : 

   [options]
   map-bounds-top-left = xx.xxxx;y.yyyy
   map-bounds-bottom-right = xx.xxxxx;y.yyyy
