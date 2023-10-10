#!/bin/bash -i
echo "--------------------"
echo "Installing PostreSQL:"
echo "--------------------"
sudo apt-get install wget ca-certificates -y
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update

sudo apt-get install postgresql postgresql-contrib -y

echo "------------------------------------------------------------"
echo "Configuration (http://www.stuartellis.eu/articles/postgresql-setup/):"
echo "sudo -u postgres psql"
echo "ALTER ROLE postgres WITH ENCRYPTED PASSWORD 'mypassword';"
echo "\q"
echo "------------------------------------------------------------"
