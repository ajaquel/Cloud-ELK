#!/bin/bash

echo "##########################################"
echo "##### Beats Suite 7.8.0 Installation #####"
echo "##########################################"
sleep 2
echo ""
echo "Installing necessary packages"
echo "-----------------------------"
sudo apt update
sudo apt install wget curl libpcap0.8 -y
sleep 2
echo ""
echo "Installing Beats Suite"
echo "----------------------"
echo ""
echo "Installing Beats - Filebeat ..." 
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.8.0-amd64.deb
sudo dpkg -i filebeat-7.8.0-amd64.deb
sleep 2
echo ""
echo "Installing Beats - Metricbeat ..." 
curl -L -O https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.8.0-amd64.deb
sudo dpkg -i metricbeat-7.8.0-amd64.deb
sleep 2
echo ""
echo "Installing Beats - Packetbeat ..." 
curl -L -O https://artifacts.elastic.co/downloads/beats/packetbeat/packetbeat-7.8.0-amd64.deb
sudo dpkg -i packetbeat-7.8.0-amd64.deb
sleep 2
echo ""
echo "Installing Beats - Auditbeat ..." 
curl -L -O https://artifacts.elastic.co/downloads/beats/auditbeat/auditbeat-7.8.0-amd64.deb
sudo dpkg -i auditbeat-7.8.0-amd64.deb
sleep 2
echo ""
echo "Installing Beats - Heartbeat ..." 
curl -L -O https://artifacts.elastic.co/downloads/beats/heartbeat/heartbeat-7.8.0-amd64.deb
sudo dpkg -i heartbeat-7.8.0-amd64.deb
sleep 2

