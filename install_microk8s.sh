## snap
sudo yum install epel-release -y
sudo yum install snapd -y
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

## microk8s
sudo snap install microk8s --channel=1.15/stable --classic
sudo usermod -a -G microk8s centos
sudo snap alias microk8s.kubectl kubectl