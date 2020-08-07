#!/usr/bin/env bash

if [[ -d Client/ ]]
then
    cd Client/

    echo "Applying patches..."
    git apply ../Patches/*

    echo "Patching done."

else
    echo "Client folder (Client/) does not exist! Exiting..."
fi