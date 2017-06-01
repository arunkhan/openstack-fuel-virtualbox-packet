yum update -y

# Setup VirtualBox repo
wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
mv virtualbox.repo /etc/yum.repos.d

# Install kernel source required by VirtualBox
wget http://vault.centos.org/7.2.1511/updates/x86_64/Packages/kernel-devel-3.10.0-327.22.2.el7.x86_64.rpm
rpm -hi kernel-devel-3.10.0-327.22.2.el7.x86_64.rpm
yum install -y gcc make

# Install VirtualBox and kernel module
yum install -y VirtualBox-5.1
yum update -y
/sbin/vboxconfig

# Install VirtualBox extension pack
wget http://download.virtualbox.org/virtualbox/5.1.22/Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack
echo y | vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack

# Install the Mirantis scripts for VirtualBox
wget https://software.mirantis.com/load/9-1-vbox/ -O vbox-scripts-9.1.zip
yum -y install unzip
unzip vbox-scripts-9.1.zip

# Grab the Mirantis ISO and place in the directory required by the Fuel scripts
wget http://9f2b43d3ab92f886c3f0-e8d43ffad23ec549234584e5c62a6e24.r60.cf1.rackcdn.com/MirantisOpenStack-9.0.iso
mv MirantisOpenStack-9.0.iso iso/

# Install Mirantis pre-reqs
yum install -y expect

# enable headless mode
sed -i 's/headless=.*/headless=1/g' config.sh




