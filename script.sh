aptitude update
aptitude install -y git g++ libboost-dev libboost-test-dev libboost-random-dev libgsl0-dev libhdf5-serial-dev python-dev python-pip pkg-config cython python-zmq
pip install ipython jinja2 tornado
git clone git://github.com/ecell/ecell4
cd ecell4; PREFIX=/usr/local bash install.sh core core_python gillespie gillespie_python ode ode_python
cd; ipython notebook --no-browser --ip=0.0.0.0 --port 8888
