
## microk8s
sudo systemctl start snapd
sudo systemctl status snapd.socket

sudo snap install microk8s --channel=1.15/stable --classic
sudo usermod -a -G microk8s centos
sudo snap alias microk8s.kubectl kubectl

microk8s.status --wait-ready
