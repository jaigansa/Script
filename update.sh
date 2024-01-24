#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo

echo -e "step 1: ${RED}pre-configuring packages${NOCOLOR}"
sudo dpkg --configure -a

echo

echo -e "step 2: ${RED}fix and attempt to correct a system with broken dependencies${NOCOLOR}"
sudo apt-get install -f

echo

echo -e "step 3: ${RED}update apt cache${NOCOLOR}"
sudo apt-get update

echo

echo -e "step 4: ${RED}upgrade packages Lists${NOCOLOR}"
sudo apt list --upgradable

echo

echo -e "step 4: ${RED}upgrade packages${NOCOLOR}"
sudo apt-get upgrade

echo

echo -e "step 5: ${RED}distribution upgrade${NOCOLOR}"
sudo apt-get dist-upgrade

echo

echo -e "step 6: ${RED}remove unused packages${NOCOLOR}"
sudo apt-get --purge autoremove

echo

echo -e "step 7: ${RED}clean up${NOCOLOR}"
sudo apt-get autoclean

echo


echo -e "${GREEN}System Updated${NOCOLOR}"
