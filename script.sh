#!/usr/bin/env bash

# Set up environment...

aptitude update
aptitude install -y git g++ libboost-dev libboost-test-dev libboost-regex-dev libboost-random-dev libgsl0-dev libhdf5-serial-dev python-dev python-matplotlib python-pip pkg-config cython python-zmq
pip install ipython jinja2 tornado
cd /root; git clone git://github.com/ecell/ecell4
cd /root/ecell4/core; CXXFLAGS="-Wall -O2" LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /root/ecell4/gillespie; CXXFLAGS="-Wall -O2" LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /root/ecell4/ode; CXXFLAGS="-Wall -O2" LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /root/ecell4/lattice; CXXFLAGS="-Wall -O2" LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /root/ecell4/bd; CXXFLAGS="-Wall -O2" LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd /root/ecell4; PREFIX=/usr/local bash install.sh core_python gillespie_python ode_python lattice_python bd_python reaction_reader

# Put launch script of ipython notebook.
cp /vagrant/start_ipython.sh /usr/local/bin/start_ipython.sh
chmod 755 /usr/local/bin/start_ipython.sh

# Put upstart stcript for launching ipython when startup
cp /vagrant/ipy.conf /etc/init/ipy.conf

# Launch ipython service.
initctl start ipy
