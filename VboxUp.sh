#Automating VirtualBox updates on Centos 7 | the script should work for other distibutions, just change rpm to dpkg, etc.
#Run this script with root permissions or run the script as root
vbRemove()
{
    sudo killall -9 virtualbox #Kill all virtualbox processes by name, not PID
    Version=$(rpm -qa | grep VirtualBox) #Assigning the output so the current package can be removed
    sudo rpm -e "${Version}" #Removing the installed package
}
vbGrab()
{
    #Grabbing the RPM, change the url with each update.
    curl -O https://download.virtualbox.org/virtualbox/6.1.12/VirtualBox-6.1-6.1.12_139181_el7-1.x86_64.rpm
}
vbInstall()
{
    #sudo rpm -i VirtualBox-6.1-6.1.12_139181_el7-1.x86_64.rpm #Specific RPM, if you have multiple Virtualbox RPM'S in a directory
    sudo rpm -i VirtualBox* #The automatic option
}
reboot()
{
    sudo reboot -h now #Rebooting Centos, this isn't necessary.
}
vbRemove
vbGrab
vbInstall
reboot
