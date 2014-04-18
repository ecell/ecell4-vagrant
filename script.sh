sed -i -e 's/http:\/\/archive.ubuntu.com\/ubuntu/http:\/\/ftp.jaist.ac.jp\/pub\/Linux\/ubuntu/' /etc/apt/sources.list
aptitude update
aptitude install -y git g++ libboost-dev libboost-test-dev libboost-random-dev libgsl0-dev libhdf5-serial-dev python-dev python-pip pkg-config cython python-zmq
pip install ipython jinja2 tornado
cd ~; git clone git://github.com/ecell/ecell4
cd ~/ecell4/core; python ../waf configure build install
cd ~/ecell4/gillespie; python ../waf configure build install
cd ~/ecell4/ode; LD_LIBRARY_PATH=/usr/local/lib python ../waf configure build install
cd ~/ecell4; PREFIX=/usr/local bash install.sh core_python gillespie_python ode_python
cd; LD_LIBRARY_PATH=/usr/local/lib ipython notebook --no-browser --ip=0.0.0.0 --port 8888
