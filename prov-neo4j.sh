#!/bin/bash

# wget -O neo4j-community-3.3.0-unix.tar.gz https://neo4j.com/artifact.php?name=neo4j-community-3.3.0-unix.tar.gz
# tar -xf neo4j-community-3.3.0-unix.tar.gz
# (
#   cd neo4j-community-3.3.0;
# )


wget -O - https://debian.neo4j.org/neotechnology.gpg.key | apt-key add -
echo 'deb http://debian.neo4j.org/repo stable/' | tee -a /etc/apt/sources.list.d/neo4j.list
apt-get update
apt-get install neo4j=3.3.0 -y
