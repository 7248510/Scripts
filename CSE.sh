#/usr/bin/sh
#A script to grab dependancies for locally hosting CSE
#Tested on CentOS7
install()
{
  sudo yum install git -y 
  sudo yum install python3 -y #For cent. Ubuntu = sudo apt-get install python3    Python3 might be installed by default on Ubuntu 
  sudo python3 -m pip install argh
  sudo python -m pip install opencv-python
  sudo python -m pip install flask
  sudo python -m pip install mss
  sudo python -m pip install urllib3
  sudo python -m pip install flask-pymongo
  sudo python -m pip install flask-bcrypt
  sudo python -m pip install bson
}
showIP()
{
  echo your IP is bellow
  ip a
}
update()
{
	sudo yum update
}
gitme()
{
	git clone https://github.com/7248510/CSE-Analytics.git
}
install
gitme
showIP
#update
