echo "your server will start in 1 seconds"
./start-ubuntu.sh
cd mc
java -Xmx1024M -Xms1024M -jar server.jar nogui
echo "server started."
