#For Security Onion
#https://www.cyberciti.biz/faq/ufw-allow-incoming-ssh-connections-from-a-specific-ip-address-subnet-on-ubuntu-debian/
#https://secatlas.wordpress.com/2015/03/09/security-onion-and-xrdp/
#https://groups.google.com/forum/#!topic/security-onion/ryzS_7f84Fs
sudo apt-get install xrdp -y
sudo systemctl enable xrdp --now
sudo ufw allow from 10.0.1.1/8 to any port 3389
sudo apt-get install xfce4 -y
echo xfce4-session >~/.xsession
sudo systemctl restart xrdp --now
