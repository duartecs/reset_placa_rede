#!/bin/bash

echo Reiniciando a placa de Rede!

sudo ifconfig enp4s0 down
sudo ifconfig enp4s0 up

sleep 5
if ping -c 1 google.com &> /dev/null
then
        echo Ondelaine!
else
        bash reset_placa_rede.bash
fi
