###setup virtual environment with Python 2.7.12
echo y | sudo apt-get install build-essential checkinstall
echo y | sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
mkdir src
cd src
wget http://python.org/ftp/python/2.7.12/Python-2.7.12.tgz
tar -zxvf Python-2.7.12.tgz
cd Python-2.7.12
mkdir ~/.localpython
./configure --prefix=$HOME/.localpython
make
make install
sudo apt-get install python-setuptools
sudo easy_install virtualenv
mkdir -p  ~/virtenv/rango/v1
virtualenv ~/virtenv/rango/v1 -p $HOME/.localpython/bin/python2.7
source ~/virtenv/rango/v1/bin/activate
###install git
sudo apt-get install git
###install django
pip install -U django==1.9.10
###install pillow
pip install pillow
