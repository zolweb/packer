Packer configurations
=====================

Here is some packer configurations

Packer?
-------

> Packer is easy to use and automates the creation of any type of machine image.

http://www.packer.io/

http://www.packer.io/docs/installation.html]

In each packer command you can use options like this:

```shell
packer build -var 'name=zol' -var 'disk_size=100000' conf.json
```

Vagrant boxes
-------------

### Virtualbox

#### Debian wheezy

Create a Debian wheezy vagrant box. Here is the details:
 - Debian in French
 - No root user
 - User sudoer `vagrant` password `vagrant`
 - 1024 memory and 2 CPU by default

```shell
packer build debian_wheezy.json
```

Available options:
 - `name`: default `zol-debian-wheezy` -> will produce zol-debian-wheezy.box
 - `compression_level`: default `5` (1 to 9)
 - `disk_size`: default `40000` (40GB)
 - `hostname` default `zol`
 - `domain`: default `zol`
