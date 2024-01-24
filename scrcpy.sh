#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo

echo -e "step 1: ${RED}pre-configuring packages${NOCOLOR}"
adb devices

echo

echo -e "step 1: ${RED}pre-configuring packages${NOCOLOR}"
scrcpy -n --print-fps


