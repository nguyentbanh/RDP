#! /bin/bash
printf "Installing SEED lab Be Patience... " >&2
{
curl -o src-cloud.zip https://seed.nyc3.cdn.digitaloceanspaces.com/src-cloud.zip
sudo apt update 
sudo apt -y install unzip
unzip src-cloud.zip 
cd src-cloud.zip
sudo ./install.sh
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2
