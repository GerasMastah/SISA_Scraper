#!/bin/bash

curl -c SISA_Scrapper/login_cookie.txt 'https://srvcldutez.utez.edu.mx:8443/SISAVA/iniciarSesion' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:81.0) Gecko/20100101 Firefox/81.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Content-Type: application/x-www-form-urlencoded' -H 'Origin: https://srvcldutez.utez.edu.mx:8443' -H 'Connection: keep-alive' -H 'Referer: https://srvcldutez.utez.edu.mx:8443/SISAVA/cerrarSesion' -H 'Upgrade-Insecure-Requests: 1' --data-raw 'usuario.nick="USERNAME"tn001&usuario.contrasexa="PASSWORD"'

curl -s -b SISA_Scrapper/login_cookie.txt  https://srvcldutez.utez.edu.mx:8443/SISAVA/consultarHistorial > SISA_Scrapper/sisa.json

python SISA_Scrapper/SISA_Scrapper.py




