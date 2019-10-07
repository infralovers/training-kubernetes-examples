sudo yum install epel-release -y
sudo yum install snapd -y
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install microk8s --classic
sudo usermod -a -G microk8s centos
sudo snap alias microk8s.kubectl kubectl