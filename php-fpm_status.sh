#!/bin/bash
# PHP-FPM-status-Cacti Template: https://github.com/Busindre/PHP-FPM-status-Cacti
# Curl Options (Proxy, timeouts, HTTP Authentication, etc)
CURL_OPTIONS="-m 15 -k -qs"
echo $(curl $CURL_OPTIONS "$1" | grep -o "accepted conn\:.*\|^listen queue\:.*\|queue len\:.*\|children reached\:.*\|^active processes\:.*\|idle processes\:.*\|slow requests\:.*" | awk '{print $1":"$3}')
