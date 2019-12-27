#/usr/bin/sh
#Parameters
#cl = Command line #
#comp = Component #, if you don't want a component just comment out one of the array slots
install()
{
	cl1=('sudo')
	cl2=('yum')
	cl3=('install')
	comp[0]="epel-release"
	comp[1]="wget"
	comp[2]="gcc-c++"
	comp[3]="git"
	comp[4]="centos-release-scl"
	comp[5]="rh-python36"
	echo "$c11 $cl2 $cl3 ${comp[0]}"
	echo "$c11 $cl2 $cl3 ${comp[1]}"
	echo "$c11 $cl2 $cl3 ${comp[2]}"
	echo "$c11 $cl2 $cl3 ${comp[3]}"
	echo "$c11 $cl2 $cl3 ${comp[4]}"
	echo "$c11 $cl2 $cl3 ${comp[5]}"
}
ena()
{
	sudo scl enable rh-python36 bash
}
net()
{
#Only run this module if the script is being run on the host server
	sudo sysctl -w net.ipv4.ip_forward=0
	#This stops duplicate packets via VirtualBox
}
ena
install
