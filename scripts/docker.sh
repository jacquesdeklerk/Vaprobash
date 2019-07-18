#!/usr/bin/env bash

echo ">>> Installing Docker"

sudo apt update

# Add Key
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt update

# Install Docker
sudo apt install docker-ce


# Make the vagrant user able to interact with docker without sudo
sudo usermod -aG docker ${USER}

