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
$ docker build -t lookingglass .
$ docker run -p 80:80 -v $(pwd)/Config.php:/var/www/html/LookingGlass/Config.php lookingglass
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
