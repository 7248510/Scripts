#/usr/bin/sh



output ()

{
        message="Shutting down VM'S"
        echo $message
}



#list ()
#
#{
#        command=('vboxmanage list vms')
#        $command
#	#using the vboxmanage command to output a list of virtual machines
#}



poweroff ()
#This function will poweroff the virtual machines listed.
{
	flag=('poweroff') #Syntax VboxManage ControlVm + [flag]
        power=('vboxmanage controlvm')
        Bulldog=("66d3258e-6694-47ae-8a4e-8f00d4d67b9f")
        Pinky1=("4263befb-bad7-42df-859b-94fa173ad4fc")
        Pinky2=("9ebea899-1378-4a19-8fed-9e8f885319a9")
        Raven1=("4547d839-2f8d-4bd9-bae6-2042ac3bad78")
        Raven2=("c27975de-21df-457e-a0a8-69531dccc9cd")
        SolidState=("80b8702d-05ce-4ceb-8878-98d1406d18c6")
        OwaspSecShep=("bb55610d-2fbf-46d0-827e-6f9a7e0b64a1")
        LazySysAdmin=("9f1f57c3-5b1f-429a-8e4a-8ab4422005e6")
      	metasploitable=("febe6f4f-7982-4a59-8dcd-c287fbc2fcd1")
	pfsense=("eb99f2b8-6354-48ee-b6d6-a04223995219")
	$power $pfsense $flag
        $power $metasploitable $flag
        $power $Bulldog $flag
        $power $Pinky1 $flag
        $power $Pinky2 $flag
        $power $Raven1 $flag
        $power $Raven2 $flag
        $power $SolidState $flag
        $power $OwaspSecShep $flag
        $power $LazySysAdmin $flag
}
#Runs the functions
output
poweroff
