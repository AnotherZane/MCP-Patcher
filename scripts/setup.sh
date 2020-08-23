#!/usr/bin/env bash

OPTF_URL="https://github.com/AnotherZane/Optifine-SRC/raw/master/Optifine%20SRC%20Version%20%5B1.16.2%20HD%20U%20G3%20pre2%5D.rar"
GITIGNORE_URL="https://gist.githubusercontent.com/AnotherZane/66e804e79b8a4d2e885c0a82ff53c682/raw/a08334633e08fa0b9d6717a153acbfce7b40f948/MCP-Reborn%2520.gitignore"

if [[ -d Client/ ]]
then
    echo "Client folder (Client/) already exists!"
    echo "Delete it if you want to setup the client again."

else
    echo "Cloning MCP-Reborn files into Client folder..."
    git clone https://github.com/AnotherZane/MCP-Reborn.git Client
    cd Client/

    echo ""
    echo "Setting up MCP... (This may take a while)"
    echo ""
    chmod +x gradlew
    ./gradlew setup
    mkdir src/main/resources

    echo ""
    echo "Cleaning up..."
    rm -rf .github/

    echo "Do you require Optifine? [y/n]"
    read optf

    if [ $optf == "y" ]
    then
        echo "Downloading Optifine..."
        wget $OPTF_URL -O optfine.rar

        echo "Uncompressing..."
        mkdir tmp
        unrar x optfine.rar tmp/

        echo "Copying files..."
        cp tmp/assets/ src/main/resources/ -rf
        cp tmp/com/ src/main/java/ -rf
        cp tmp/mcp/ src/main/java/ -rf
        cp tmp/net/ src/main/java/ -rf
        cp tmp/Start.java src/main/java/ -f
        
        echo "Cleaning up..."
        rm -rf tmp/
        rm -f optfine.rar

        echo "Added Optifine!"
    else
        echo "Skipped adding Optfine..."
    fi

    echo "Re-initializing git repo..."
    rm -rf .git
    git init

    echo "Modifying .gitignore"
    rm -f .gitignore
    wget $GITIGNORE_URL -O .gitignore

    echo "Creating first commit... (This commit will be ignored by the patch creator as it contains mc source code.)"
    git add .
    git commit -m "Minecraft Source"

    echo "Creating new git branch 'mc'... (Do not delete or modify code in this branch)"
    git branch mc

    
    echo "Applying patches..."
    git apply ../Patches/*

    echo "Patches applied!"

    echo ""
    echo "Done!"
fi
