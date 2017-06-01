# setup port forwarding for access to the VMs created

socat tcp-listen:8001,reuseaddr,fork tcp:10.20.0.2:8000 &
socat tcp-listen:8002,reuseaddr,fork tcp:172.16.0.3:80 &
socat tcp-listen:8003,reuseaddr,fork tcp:172.16.0.131:22 &


IP=`hostname -I | cut -d' ' -f 1`
