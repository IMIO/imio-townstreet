# imio-town-street

- E-Guichet town-street : Signalements citoyen sur la voie publique (participation citoyenne).

Installation
------------
   1. `apt update && apt install imio-town-street && apt install wcs-scripts-teleservices`
   2. `cd /usr/lib/imio_town_street`
   3. `./install_imio-town-street.sh DOMAIN (guichet-citoyen.be, lescommunes.be,example.Net,...)`

Configuration
-------------
Edit the combo (config filesystem) relative to the city in `imio-publik-themes/static/[COMMUNE]/config.json` and add a "settings" section if there isn't yet. Don't forget to add default map position. These coordinates indicates the center of the displayed map. 

```
"settings": {
  "combo": {
    "COMBO_MAP_DEFAULT_POSITION": {
      "lat": "xx.xxxxx",
      "lng": "y.yyyyy"
    }
  }
}
```


   To limit scope of map on the city, you must set 2 variables in wcs `site-options.cfg`  
   path : /var/lib/wcs/COMMUNE-formulaires.guichet-citoyen.be/site-options.cfg
   These coordinates constrain the display to the determined area. It will be impossible for the user to navigate further than the frame determined by these two coordinates
```
   [options]
   map-bounds-top-left = xx.xxxx;y.yyyy
   map-bounds-bottom-right = xx.xxxxx;y.yyyy
```

