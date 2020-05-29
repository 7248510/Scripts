import subprocess
import time
#Script has been tested on Windows
#This script requires you to add youtube-dl to your path(Windows or Linux) or run the script with the youtube-dl executable(Windows).
#Renamed youtube-dl.exe/youtube-dl to yt.exe
base = 'yt.exe '
output_name = input("Please input the folder name you would like to save your files too.\n")

with open('name.txt', 'r') as f:
    urlList = [line.rstrip() for line in f]
def download():
    for url in urlList:
        time.sleep(10)
        command = base + url + " "
        #This will output to your home directory, Windows = [driveletter]:\Users\[username], Linux is /home/
        output = ['-o ', '~/',output_name, '/%(title)s.%(ext)s']
        joined = ''.join(output)
        complete = command + joined
        subprocess.run(complete,shell=True)
        print("Downloading " + url)
download()
