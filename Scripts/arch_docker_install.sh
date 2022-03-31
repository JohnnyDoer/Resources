#!/bin/bash
sudo pacman -S docker --noconfirm
git clone https://aur.archlinux.org/docker-git.git
sudo pacman -S base-devel --noconfirm
cd docker-git/
makepkg -sri
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
docker run hello-world
