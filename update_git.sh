yum update wget && yum install -y wget
wget http://wing-repo.net/wing/6/EL6.wing.repo -P /etc/yum.repos.d/
yum --enablerepo=wing install -y git
