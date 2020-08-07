#!/usr/bin/env bash

if [[ -d Client/ ]]
then
    echo "Clearing old patches..."
    rm -f Patches/* 

    cd Client/

    echo "Generating patches..."
    git format-patch --zero-commit --full-index --no-signature --no-stat -N -o ../Patches mc

    echo "Generated patches."

else
    echo "Client folder (Client/) does not exist! Exiting..."
fi