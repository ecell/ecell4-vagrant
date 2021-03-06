# Requirements
* Virtualbox
* Vagrant

## Disk space and memory
ecell4-vagrant requires *1.5GB* disk space and *2GB* memory

## Mac OS X Virtualbox, Vagrant installation
1. Download dmg file from http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html , and open it.
2. Download dmg file from http://www.vagrantup.com/downloads.html , and open it.

## Windows Virtualbox, Vagrant installation
1. Download exe file from http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html , and open it.
2. Download msi file from http://www.vagrantup.com/downloads.html , and open it.

## Ubuntu 14.04 LTS (Trusty Tahr) Virtualbox, Vagrant installation
1. Open terminal, and run `sudo apt-get install virtualbox`
2. Download deb file from http://www.vagrantup.com/downloads.html , and run `sudo dpkg -i vagrant_*.deb` in terminal.

# How to use ecell4-vagrant

Download and unzip https://github.com/ecell/ecell4-vagrant/archive/master.zip

* open terminal(or command prompt) and run these commands

```
cd ecell4-vagrant-master
vagrant up
```

* open localhost:8888 with your browser, there should be 7 ipynb tutorials.

![tutorials](https://raw.githubusercontent.com/ecell/ecell4-vagrant/master/images/tutorials.png)

## When you aborted ecell4-vagrant

When you rebooted your PC, ecell4-vagrant vm might be in *aborted* state.

![aborted](https://raw.githubusercontent.com/ecell/ecell4-vagrant/master/images/aborted.png)

In this state, you cannot access E-Cell4 IPython notebook.
Please run

```
cd ecell4-vagrant-master
vagrant reload
```
