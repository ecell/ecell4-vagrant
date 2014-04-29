#!/usr/bin/env bash

<<<<<<< HEAD
=======
# Set up environment...
>>>>>>> run_as_service
aptitude update
aptitude install -y git g++ libboost-dev libboost-test-dev libboost-regex-dev libboost-random-dev libgsl0-dev libhdf5-serial-dev python-dev python-pip pkg-config cython python-zmq
pip install ipython jinja2 tornado
cd /vagrant; git clone git://github.com/ecell/ecell4
cd /vagrant/ecell4/core; python ../waf configure build install
cd /vagrant/ecell4/gillespie; python ../waf configure build install
cd /vagrant/ecell4/ode; LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /vagrant/ecell4; PREFIX=/usr/local bash install.sh core_python gillespie_python ode_python

<<<<<<< HEAD
if [ ! -f "/root/.ipython/profile_nbserver/ipython_config.py" ]; then
    ipython profile create nbserver; printf "%s\n" "c.NotebookApp.ip = '*'" "c.NotebookApp.open_browser = False" "c.NotebookApp.password = u''" "c.NotebookApp.port = 9999" >> /root/.ipython/profile_nbserver/ipython_config.py
fi

LD_LIBRARY_PATH=/usr/local/lib ipython notebook --profile=nbserver --port-retries=0 &
=======
# Put launch script of ipython notebook.
chmod 755 /vagrant/start_ipython.sh

# Put upstart stcript for launching ipython when startup
cp /vagrant/ipy.conf /etc/init/ipy.conf

# Launch ipython service.
initctl start ipy
>>>>>>> run_as_service
