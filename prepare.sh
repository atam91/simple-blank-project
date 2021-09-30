#!/bin/bash

if [ "$1" != "--docker" ] && [ "$1" != "--local" ]; then
  echo 'You must specify preparing mode with --docker or --local';
  exit 1;
fi;

################################################################################

echo -e '\e[36m Init submodules';
git submodule update --init --recursive;
echo -e "\033[0m";

echo -e '\e[36m Preparing server';
cd server;
./prepare.sh $@;
cd ..;
echo -e "\033[0m";

echo -e '\e[36m Preparing client';
cd client;
./prepare.sh $@;
cd ..;
echo -e "\033[0m";

echo -e '\e[32m Everething is ready.';
echo -e "\033[0m";