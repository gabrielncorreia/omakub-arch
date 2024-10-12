# Add the official Docker repo
yay -S docker --noconfirm

# Install Docker engine and standard plugins
yay -S docker-buildx docker-compose --noconfirm

sudo systemctl enable docker.service
sudo systemctl start docker.service

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
