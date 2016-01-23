# PHP-FPM-status-Cacti

Cacti template for PHP-FPM Status Page. Template based on curl, not SNMP. ([Screenshots] (https://github.com/Busindre/PHP-FPM-status-Cacti/issues/1 "Cacti template for PHP-FPM Status Page screenshots"))

**PHP-FPM Status Page example.**
```
pool:                 www
process manager:      static
start time:           18/Jan/2016:16:45:46 +0100
start since:          342932
accepted conn:        1374538
listen queue:         0
max listen queue:     0
listen queue len:     0
idle processes:       57
active processes:     3
total processes:      52
max active processes: 25
max children reached: 0
slow requests:        0
```

## PHP-FPM Status Host Template (Associated Graph Templates)

- php-fpm status accepted (accepted conn).
- php-fpm status problems (slow requests, max children reached, listen queue, listen queue len).
- php-fpm status process (idle processes, active processes).

## Installation

- Copy the script "php-fpm_status.sh" to <cacti_dir>/scripts/ directory.
- HTTP connection options (Authentication, Proxy, etc) are easily configurable in the file "php-fpm_status.sh".
- Import the file xml in Cacti.
- PHP-FPM status URL should be written in the field "hostname" of "Device" (https://www.domian.com/XXXX).

## Dependencies

- Curl.

## Use / Output example
```sh
bash php-fpm_status.sh "http://www.domain.com/phpfpm_status"
accepted:1373769 listen:0 queue:0 idle:49 active:1 children:0 slow:0
```
