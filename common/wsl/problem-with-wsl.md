wsl sudo dockerd
wsl sudo rm /var/run/docker.pid
wsl sudo dockerd
wsl ps aux
wsl sudo kill -9 77 78 93
wsl sudo service docker start


DOCKER_DISTRO="Ubuntu"
DOCKER_DIR=/mnt/wsl/shared-docker
DOCKER_SOCK="$DOCKER_DIR/docker.sock"
export DOCKER_HOST="unix://$DOCKER_SOCK"
if [ ! -S "$DOCKER_SOCK" ]; then 
	mkdir -pm o=,ug=rwx "$DOCKER_DIR"
	sudo chgrp docker "$DOCKER_DIR"
	/mnt/c/Windows/System32/wsl.exe -d $DOCKER_DISTRO sh -c "nohup sudo -b dockerd < /dev/null > $DOCKER_DIR/dockerd.log 2>&1"
fi

nohup sudo -b dockerd < /dev/null > /tmp/dockerd.log 2>&1


DOCKER_DISTRO="Ubuntu"
DOCKER_DIR=/mnt/wsl/shared-docker
DOCKER_SOCK="$DOCKER_DIR/docker.sock"
export DOCKER_HOST="unix://$DOCKER_SOCK"
if [ ! -S "$DOCKER_SOCK" ]; then 
	mkdir -pm o=,ug=rwx "$DOCKER_DIR"
	sudo chgrp docker "$DOCKER_DIR"
	nohup sudo -b dockerd < /dev/null > $DOCKER_DIR/dockerd.log 2>&1
fi