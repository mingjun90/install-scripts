#!/bin/bash

TARBALL_PATH=`pwd`
PYTHON2_PATH=$TARBALL_PATH/python2
VIRTUAL_PATH=$TARBALL_PATH/virtual
PY2_VIRTUALENV_PATH=$TARBALL_PATH/py2

mkdir $PYTHON2_PATH
mkdir $VIRTUAL_PATH
mkdir $PY2_VIRTUALENV_PATH
exit

#---------------------------------------+
# install python locally
#---------------------------------------+
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar xvf Python-2.7.13.tgz
cd Python-2.7.13/
./configure --prefix=$PYTHON2_PATH
make
make install


#---------------------------------------+
# pip may be installed with python
#---------------------------------------+
cd $TARBALL_PATH
wget https://bootstrap.pypa.io/get-pip.py
$PYTHON2_PATH/bin/python get-pip.py


#---------------------------------------+
# install virtualenv on Ubuntu
#---------------------------------------+
sudo apt-get install python-virtualenv

#---------------------------------------+
# install virtualenv with pip
#---------------------------------------+
sudo pip install --prefix $VIRTUAL_PATH virtualenv

#---------------------------------------+
# install virtualenv from tarball
#---------------------------------------+
# visit https://pypi.python.org/pypi/virtualenv
# download and extract the latest tarball


#---------------------------------------+
# create venv with specifc python
#---------------------------------------+
virtualenv -p $PYTHON2_PATH/bin/python $PY2_VIRTUALENV_PATH

#---------------------------------------+
# add venv to bash alias
#---------------------------------------+
CMD="source ${PY2_VIRTUALENV_PATH}/bin/activate"
echo "alias py2=\'${CMD}\'" >> ~/.bash_aliases
. ~/.bash_aliases
