# dependencies 
   # ngrok executable in same directory
   # Novnc in same directory
file="noVNC-master"     
if [ -f $file  ]; then
   echo "File $file  exists."
else
   echo "File $file  does not exist."
   sleep 1
   wget https://github.com/novnc/noVNC/archive/master.zip
   unzip master.zip
   sudo rm -r master.zip
fi

file="ngrok"
if [ -f $file  ]; then
   echo "File $file  exists."
else
   echo "File $file  does not exist."
   sleep 1
   wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip
   unzip ngrok-stable-linux-386.zip
   sudo rm -r ngrok-stable-linux-386.zip
fi
cp startgui.sh $HOME
echo "finished"
