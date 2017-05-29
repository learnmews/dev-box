# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo updating python package information
add-apt-repository -y ppa:mystic-mirage/pycharm >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

echo installing python tools
apt-get install -y python3-dev python3-pip 
apt-get install -y bpython3
apt-get install -y idle3
apt-get install -y pycharm
pip3 install --upgrade pip3
pip3 install --upgrade virtualenv 
pip3 install --upgrade virtualenvwrapper
pip3 install --upgrade jupyter
pip3 install --upgrade ipython

# echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> /home/vagrant/.bashrc
# echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc

echo 'all set, rock on!'
