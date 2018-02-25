# Unattended Ubuntu ISO Maker

This simple script will create an unattended Ubuntu ISO from start to finish. It will ask you a few questions once, and embed your answers into a remastered ISO file for you to use over and over again. 

This script creates a 100% original Ubuntu installation. You have all the freedom in the world to customize your Ubuntu installation whichever way you see fit. This script just takes the pain out of re-installing Ubuntu over and over again.

The remastered ISO will preconfigure the SSH server with the port number of your choosing, so this installation can be executed on headless machines. To signify that the installation is complete, it will shutdown automatically. Just turn the machine back on, and you can ssh into the server.

## Compatibility

The script supports the following Ubuntu editions out of the box:

* Ubuntu 12.04 Server LTS amd64 - Precise Pangolin
* Ubuntu 14.04 Server LTS amd64 - Trusty Tahr
* Ubuntu 16.04 Server LTS amd64 - Xenial Xerus

Script automatically chooses the latest current image by parsing http://releases.ubuntu.com page.

## Requirements

* Target machine needs to be connected to the internet for installation to finish properly with ssh server enabled.

## Additonal Packages

On top of the default Ubuntu installation, it will install the following package(s)

- openssh-server
- this repo is cloned under /var/lib so it can be used to remaster anoter ISO

## Usage

* From your command line, run the following commands:

```
$ git clone https://github.com/ki1cx/ubuntu-unattended.git
$ cd ubuntu-unattended
$ sudo ./create-unattended-iso.sh
```

* Choose which version you would like to remaster:

```
 +---------------------------------------------------+
 |            UNATTENDED UBUNTU ISO MAKER            |
 +---------------------------------------------------+

 which ubuntu edition would you like to remaster:

  [1] Ubuntu 12.04.4 LTS Server amd64 - Precise Pangolin
  [2] Ubuntu 14.04.2 LTS Server amd64 - Trusty Tahr
  [3] Ubuntu 16.04.1 Server LTS amd64 - Xenial Xerus

 please enter your preference: [1|2|3]:
```

* Enter your desired timezone

```
 please enter your preferred timezone:
```
* Enter your desired ssh port number

```
 please enter your preferred ssh port number:
```

* Enter your desired username

```
 please enter your preferred username:
```

* Enter the password for your user account:

```
 please enter your preferred password:
```

* Confirm your password:

```
 confirm your preferred password:
```

* Sit back and relax, while the script does the rest! :)

## What it does

This script does a bunch of stuff, here's the quick walk-through:

## License
MIT

## Adaptation

This is modified version of the original ubuntu-unattended repo created by **Rinck Sonnenberg (Netson)**
https://github.com/netson/ubuntu-unattended


