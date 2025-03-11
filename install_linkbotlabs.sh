#!/bin/bash

# Add the repository key
wget -qO - https://download.linkbotlabs.com/repos/apt/debian/public.key | sudo apt-key add -

# Add the repository to sources.list.d
echo 'deb https://download.linkbotlabs.com/repos/apt/debian jessie main' | sudo tee /etc/apt/sources.list.d/barobo.list

# Update package list
sudo apt-get update

# Install or upgrade LinkbotLabs
sudo apt-get install -y linkbotlabs
sudo apt-get upgrade -y
