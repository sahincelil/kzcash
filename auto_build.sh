#!/usr/bin/env bash
# Simple build script for KZCash Core on Debian/Ubuntu systems.
# This installs common dependencies and builds the project.

set -e

# Update package lists and install dependencies
sudo apt-get update

# Ensure Berkeley DB 4.8 packages are available. If not, add the Bitcoin PPA.
if apt-cache policy libdb4.8-dev | grep -q "Candidate: (none)"; then
    sudo apt-get install -y software-properties-common
    sudo add-apt-repository -y ppa:bitcoin/bitcoin
    sudo apt-get update
fi

sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev \
    libevent-dev bsdmainutils libboost-system-dev libboost-filesystem-dev \
    libboost-chrono-dev libboost-program-options-dev libboost-test-dev \
    libboost-thread-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev \
    libzmq3-dev libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev \
    qttools5-dev-tools libprotobuf-dev protobuf-compiler libqrencode-dev

# Generate build scripts, configure and compile
./autogen.sh
./configure --with-gui=qt5
make -j$(nproc)

# Uncomment the next line to run the test suite
# make check

# Uncomment the next line to install
# sudo make install
