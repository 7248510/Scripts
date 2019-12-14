#/usr/bin/sh



output ()

{
        message="Starting Metasploitable, Owasp and PfSense"
        echo $message
}



list ()
{

        command=('vboxmanage list vms')

        $command

}



start ()

{

        startup=('vboxmanage startvm')
        headless=('--type headless')
        OwaspSecShep=("bb55610d-2fbf-46d0-827e-6f9a7e0b64a1")
        pfsense=("eb99f2b8-6354-48ee-b6d6-a04223995219")
        metasploitable=("febe6f4f-7982-4a59-8dcd-c287fbc2fcd1")
	# c2=("06618ecb-e7f7-4677-a8af-cd1be54ec5c9")
	#win7=("8ffaecfc-c85d-4142-aa70-50fdff8fba65")
	#winsv19=("36607419-84f0-405d-b6b0-f4255f6c3d13")
	#winsv19c=("46e94a51-d6f7-4458-a694-f00e11a1ba14")
	#win10=("87659b74-966c-4475-a0fe-e5595590e869")
	#gopsh=("375988a5-f925-4f7e-b762-162a4942bb8d")
	win10dev=("cbf09a5b-eda5-4194-a5c0-8de2fb76632c")
	c2http=("e082732c-bb4b-40c6-9132-3904025d74f9")
	pythonDev=("e3e4f557-698c-4ef1-8b2d-360e9e63f5a6")
	gitlab=("fb11e42c-4f88-42cc-93be-6a36a0e3efb6")
	databases=("e16f3da4-a779-4dbe-a15f-84e583af1ecb")
	metasploitable3win=("3570173c-c315-4bec-9e35-bd6dd77ce5f3")
	metasploitable3lx=("10b4a0c1-4874-4c89-926c-a2b95b94a823")
        $startup $pfsense $headless
        $startup $metasploitable $headless
        $startup $OwaspSecShep $headless
	#$startup $c2 $headless
	#$startup $win7 $headless
	#$startup $win10 $headless
	#$startup $winsv19 $headless
	#$startup $winsv19c $headless
	#$startup $gopsh $headless
	$startup $win10dev $headless
	$startup $c2http $headless
	$startup $pythonDev $headless
	$startup $gitlab $headless
	$startup $databases $headless
	$startup $metasploitable3lx $headless
	$startup $metasploitable3win $headless
}





output
#list
start
