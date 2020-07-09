(Official) Nextcloud VM
============

Server installation. Simplified. :cloud:
--------------------------------

This is the stripped down version of the full (original) Nextcloud VM. With this you "only" get a clean Nextcloud installation with files, that's it. No TLS, no automated apps configuration or anything like that - which you do in the [full version](https://www.hanssonit.se/nextcloud-vm/).

The script automatically fetches the latest Nextcloud version when the below steps are taken.

To get this going, it's just a few steps:
1. Download and setup an Ubuntu Server 20.04 with:
    - 2 disks (one for OS, LVM - and one for DATA, don't do anything with this, just add it)
    - USER: ncadmin
    - PASSWORD: whatever ('nextcloud' is default)
2. Boot the server and login.
3. Run `wget https://github.com/nextcloud/vm/blob/official/prep_vm.sh`
4. Reboot and login again
5. Enjoy your Nextcloud installation!

## Dependencies:
(Ubuntu Server 20.04 LTS 64-bit)
(Linux Kernel: 5.14)
- Apache 2.4
- PostgreSQL 12
- PHP-FPM 7.4
- Redis Memcache (latest stable version from PECL)
- APCu local cache (latest stable version from PECL)
- PHP-igbinary (latest stable version from PECL
- PHP-smbclient (latest stable version from PECL)
- Nextcloud Server Latest

## The usual tags
**Downloads from Github (not the main downloads location):**
<br>
![Downloads](https://img.shields.io/github/downloads/nextcloud/vm/total.svg)
<br>
**Downloads from main server:**
<br>
~100 per day since 2016
<br>
**Build Status:**
<br>
[![Build Status](https://travis-ci.org/nextcloud/vm.svg?branch=master)](https://travis-ci.org/nextcloud/vm)
<br>
**Stability Status:**
<br>
![Stability Status](https://img.shields.io/badge/stability-stable-brightgreen.svg)

## Current [maintainers](https://github.com/nextcloud/vm/graphs/contributors)
* [Daniel Hanson](https://github.com/enoch85) @ [T&M Hansson IT AB](https://www.hanssonit.se)
* [szaimen](https://github.com/szaimen)
* You? :)

## Special thanks to
* [Ezra Holm](https://github.com/ezraholm50) @ [Tech and Me](https://www.techandme.se)
* [Luis Guzman](https://github.com/Ark74) @ [SwITNet](https://switnet.net)
* [Stefan Heitmüller](https://github.com/morph027) @ [morph027's Blog](https://morph027.gitlab.io/)
* [Lorenzo Faleschini](https://github.com/penzoiders)
* [Georg Großmann](https://github.com/ggeorgg)
* [liao20081228](https://github.com/liao20081228)
* [aaaskew](https://github.com/aaaskew)

[Nextcloud Server]: https://bit.ly/2CHIUkA
[app store]: https://bit.ly/2HUy4v9
[\*nix]: https://bit.ly/2UaCC7b
[A+ security-rated]: https://bit.ly/2mvlyJ3
[Collabora Online]: https://bit.ly/2WjVVZ8
[ONLYOFFICE]: https://bit.ly/2FA0TKj
