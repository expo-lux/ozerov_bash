#!/usr/bin/env bash

sudo apt install -y zsh
useradd admin -m -s -g admin $(which zsh)
useradd david -m -s $(which nologin)
#vim /etc/default/useradd/, line with SHELL=/usr/bin/zsh
