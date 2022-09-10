#!/usr/bin/env bash

zzgrep() {
  mkdir ./temp
  tar xzvf "$1"  -C ./temp/
  grep "$2" ./temp/
  rm -rf ./temp
}

#подключить в /etc/bash.bashrc как source путь/к/скрипту
#посмотреть как тестируется sudo systemctl stop unattended-upgrades && sudo apt install forkstat -y && forkstat -e all -S