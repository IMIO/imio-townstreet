# imio-town-street

- E-Guichet town-street : Signalements citoyen sur la voie publique (participation citoyenne).

Installation
------------

    ./install_imio-town-street.sh

Configuration
-------------

    combo (config filesystem) : In theme (static/[COMMUNE]/), don't forget to add default map position in config.json : "settings" section.
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
