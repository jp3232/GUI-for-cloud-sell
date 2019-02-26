cat csgui/cs.txt
key=`cat csgui/key`
sleep 5
sudo apt-get update
# x11 emulation and GUI
sudo apt-get install vnc4server -y
sudo apt-get install xfce4 -y 

# non-essential useful applications add apps you want to uses below 
#--------------------------------------------------------

#sudo apt-get install iceweasel -y
#sudo apt-get install gnome-terminal -y

#-------------------------------------------------------

# ngrok is a localhost proxy to public  web 
# ps you nead a  account. add your key to the key file
sudo  csgui/./ngrok authtoken $key

vncserver :1 -geometry 1366x768
sudo   csgui/noVNC-master/utils/launch.sh --vnc localhost:5901 --listen 8080  &tmux split-window -v
sudo   csgui/./ngrok http 8080
