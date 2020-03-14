#This script serves a template and testing the functionality/is there a differences between the Linux VirtualBox VBoxManage and the Windows Virtualbox VBoxManage
$vpath = "E:\meta\Vbox\"
#Change the path to the default directory or a directory of your choice
$vexecute = "VBoxManage.exe"
$list = "list vms" 
$comb = $vpath + $vexecute 
powershell $comb $list