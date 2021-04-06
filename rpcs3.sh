#!/bin/bash

# This script will accept the %ROM% argument from es_systems.cfg, call the rpcs3 executable 
# with the full rom path (including EBBOT.BIN).
# The roms folder need to have a txt file for each game folder. It needs to be named as the 
# game folder with a txt extension. Inside the txt file you need to add the full path of the game eboot 

# ex.: /home/gameuser/RetroPie/roms/ps3/BCES00052-Ratchet And Clank Tools Of Destruction/PS3_GAME/USRDIR/EBOOT.BIN

# You need to create a emulators.cfg in your config directory and point it to this script.

ROM=$1

EXECDIR=/opt/retropie/emulators/rpcs3/

xargs -d '\n' < "${ROM}" "${EXECDIR}"./rpcs3-*_linux64.AppImage
