echo "WELCOME TO MCMS BY L4MBD41ST"
echo "please wait.. the program will start installing.."
echo "it will install papermc 1.12.2"

sleep 5 #starts waiting

pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh

echo "succesfully installed ubuntu now installing the mc server..."

sleep 2 #waits

chmod +x start-ubuntu.sh
bash start-ubuntu.sh


apt install software-properties-common
add-apt-repository ppa:openjdk-r/ppa && apt update
apt install openjdk-8-jre

cd ~/
mkdir "PLEASE DONT TOUCH THAT."
mkdir mc
cd mc

wget https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar

move paper-1.12.2-1620.jar server.jar

chmod +x server.jar
echo eula=true > eula.txt

echo "SERVER SUCCESFULLY INSTALLED RUNNING IT IN 5 SECONDS"
sleep 5 #waits

java -Xmx1024M -Xms1024M -jar server.jar nogui
#at this moment the server started and everything is ready
