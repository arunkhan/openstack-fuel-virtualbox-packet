# setup port forwarding for access to the VMs created

IP=`hostname -I | cut -d' ' -f 1`

echo

socat tcp-listen:8000,reuseaddr,fork tcp:10.20.0.2:8000 &
echo "Fuel console: http://$IP:8000/"

socat tcp-listen:8100,reuseaddr,fork tcp:172.16.0.3:80 &
echo "Horizon console: http://$IP:8100/"

#socat tcp-listen:8131,reuseaddr,fork tcp:172.16.0.131:22 &
#socat tcp-listen:8132,reuseaddr,fork tcp:172.16.0.132:22 &
#socat tcp-listen:8133,reuseaddr,fork tcp:172.16.0.133:22 &
#socat tcp-listen:8134,reuseaddr,fork tcp:172.16.0.134:22 &
#socat tcp-listen:8135,reuseaddr,fork tcp:172.16.0.135:22 &

echo
echo "Log into the Fuel console to assign all the nodes and configure the cloud."
echo "The Horizon console will startup after Fuel is full configured."
