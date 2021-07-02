echo "This script will update zoom on Fedora/Centos/Redhat"
wget https://zoom.us/client/latest/zoom_x86_64.rpm -P /tmp/
sudo rpm -U /tmp/zoom_x86_64.rpm  
