# Add the official Docker repo
yay -S docker --noconfirm

sudo systemctl start docker.service

# Install Docker engine and standard plugins
yay -S docker-buildx docker-compose --noconfirm

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
