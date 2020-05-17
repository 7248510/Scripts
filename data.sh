#/usr/bin/sh
#Parameters
#cl = Command line 
#This script is for CentOS, specifically a DB node.
#Future: Add Mongo for NoSQL
#comp = Component #, if you don't want a component just comment out one of the array slots
install()
{
	cl1=('sudo')
	cl2=('yum')
	cl3=('install')
	comp[0]="epel-release"
	comp[1]="wget"
	comp[2]="https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm"
	comp[3]="git"
	comp[4]="centos-release-scl"
	comp[5]="rh-python36"
  	comp[6]="postgresql12"
  	comp[7]="postgresql12-server"
  	comp[8]="clang"
	$c11 $cl2 $cl3 ${comp[0]}
	$c11 $cl2 $cl3 ${comp[1]}
	$c11 $cl2 $cl3 ${comp[2]}
	$c11 $cl2 $cl3 ${comp[3]}
	$c11 $cl2 $cl3 ${comp[4]}
	$c11 $cl2 $cl3 ${comp[5]}
	$c11 $cl2 $cl3 ${comp[6]}
	$c11 $cl2 $cl3 ${comp[7]}
	$c11 $cl2 $cl3 ${comp[8]}
}
ena()
{
	sudo scl enable rh-python36 bash
	sudo /usr/pgsql-12/bin/postgresql-12-setup initdb
  	sudo systemctl enable postgresql-12
  	sudo systemctl start postgresql-12
}
update()
{
	sudo yum update
}
update
install
ena
