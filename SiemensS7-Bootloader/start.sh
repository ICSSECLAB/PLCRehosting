#!/bin/bash
SERIAL_DEV="/dev/ttyUSB0"
stty -F ${SERIAL_DEV} cs8 38400 ignbrk -brkint -icrnl -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke  -ixon -crtscts -parodd parenb raw
socat -v -b 200 -x TCP-LISTEN:1238,bind=172.16.32.141,fork,reuseaddr ${SERIAL_DEV}
