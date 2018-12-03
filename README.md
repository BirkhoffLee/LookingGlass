# LookingGlass v1.3.2 Chinese (Traditional)

## Overview

LookingGlass is a user-friendly PHP based looking glass that allows the public (via a web interface) to execute network
commands on behalf of your server.

## Deployment

```
$ git clone https://github.com/BirkhoffLee/LookingGlass
$ cd LookingGlass
$ cp Config.php.example Config.php
$ vim Config.php # edit the config at your will
$ shred --exact --iterations=1 --size="25MB" - > "25MB.test"
$ shred --exact --iterations=1 --size="50MB" - > "50MB.test"
$ shred --exact --iterations=1 --size="100MB" - > "100MB.test"
$ docker build -t lookingglass .
$ docker run \
    -p 80:80 \
    -v $(pwd)/Config.php:/var/www/html/LookingGlass/Config.php \
    -v $(pwd)/25MB.test:/var/www/html/25MB.test:ro \
    -v $(pwd)/50MB.test:/var/www/html/50MB.test:ro \
    -v $(pwd)/100MB.test:/var/www/html/100MB.test:ro \
    ...
    lookingglass
```

## Features

* Automated install via bash script
* IPv4 & IPv6 support
* Live output via long polling
* Multiple themes
* Rate limiting of network commands

## Implemented commands

* host
* mtr
* mtr6 (IPv6)
* ping
* ping6 (IPv6)
* traceroute
* traceroute6 (IPv6)

__IPv6 commands will only work if your server has external IPv6 setup (or tunneled)__

## License

Code is licensed under MIT Public License.

* If you wish to support my efforts, keep the "Powered by LookingGlass" link intact.
