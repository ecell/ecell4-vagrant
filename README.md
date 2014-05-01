# Requirements
* Virtualbox
* Vagrant

## Mac OS X Virtualbox, Vagrant installation
1. Download dmg file from http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html , and open it.
2. Download dmg file from http://www.vagrantup.com/downloads.html , and open it.

## Windows Virtualbox, Vagrant installation
1. Download exe file from http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html , and open it.
2. Download msi file from http://www.vagrantup.com/downloads.html , and open it.

## Ubuntu 14.04 LTS (Trusty Tahr) Virtualbox, Vagrant installation
1. Run the following command
    sudo apt-get install virtualbox
2. Download deb file from http://www.vagrantup.com/downloads.html , and run the following command
    sudo dpkg -i vagrant_*.deb

# How to use ecell4-vagrant

Download and unzip https://github.com/ecell/ecell4-vagrant/archive/master.zip

* open terminal(or command prompt) and run these commands

```
cd ecell4-vagrant-master
vagrant up
```

* open localhost:8888 with your browser, there should be 7 ipynb tutorials.

## When you aborted ecell4-vagrant

When you rebooted your PC, ecell4-vagrant vm might be in *aborted* state.

In this state, you cannot access E-Cell4 IPython notebook.
Please run

    vagrant reload
