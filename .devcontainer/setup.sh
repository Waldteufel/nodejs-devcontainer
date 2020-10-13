#!/bin/bash

set -euo pipefail
export DEBIAN_FRONTEND=noninteractive

# fix permissions
chmod 644 /etc/apt/sources.list.d/* /etc/apt/trusted.gpg.d/*

# create node user
groupadd --gid 1000 node
useradd --uid 1000 --gid node --shell /bin/bash --create-home node

# install packages
apt-get update
apt-get -y install --no-install-recommends nodejs git