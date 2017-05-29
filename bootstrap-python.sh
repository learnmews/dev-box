# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
} 

function pipinstall {
    echo installing $1
    shift
    pip3 install --upgrade "$@" >/dev/null 2>&1
} 

echo updating python package information
add-apt-repository -y ppa:mystic-mirage/pycharm >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

echo installing python tools
install python3-dev python3-pip 
install bpython3
install idle3
install pycharm
pipinstall pip3
pipinstall virtualenv 
pipinstall virtualenvwrapper
pipinstall jupyter
pipinstall ipython

# echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> /home/vagrant/.bashrc
# echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
echo 'python setup complete'
echo 'all set, rock on!'
