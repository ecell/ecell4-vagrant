#!/usr/bin/env bash

# Set up environment...

aptitude update
aptitude install -y git g++ libboost-dev libboost-test-dev libboost-regex-dev libboost-random-dev libgsl0-dev libhdf5-serial-dev python-dev python-pip pkg-config cython python-zmq
pip install ipython jinja2 tornado
cd /vagrant; git clone git://github.com/ecell/ecell4
cd /vagrant/ecell4/core; python ../waf configure build install
cd /vagrant/ecell4/gillespie; python ../waf configure build install
cd /vagrant/ecell4/ode; LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /vagrant/ecell4; PREFIX=/usr/local bash install.sh core_python gillespie_python ode_python

# Put launch script of ipython notebook.
cp /vagrant/start_ipython.sh /usr/local/bin/start_ipython.sh
chmod 755 /usr/local/bin/start_ipython.sh

# Put upstart stcript for launching ipython when startup
cp /vagrant/ipy.conf /etc/init/ipy.conf

# Launch ipython service.
initctl start ipy
