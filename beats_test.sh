#!/bin/bash

echo "##################################"
echo "##### Beats Services Testing #####"
echo "##################################"
sleep 2
echo ""
echo "Testing Filebeat Services"
echo "-------------------------"
sudo service filebeat status | grep -e "beat.service - " -e "Loaded:" -e "Active:" --color=NEVER
sudo filebeat test config
sudo filebeat test output
sleep 2
echo ""
echo "Testing Metricbeat Services"
echo "---------------------------"
sudo service metricbeat status | grep -e "beat.service - " -e "Loaded:" -e "Active:" --color=NEVER
sudo metricbeat test config
sudo metricbeat test output
sleep 2
echo ""
echo "Testing Packetbeat Services"
echo "---------------------------"
sudo service packetbeat status | grep -e "beat.service - " -e "Loaded:" -e "Active:" --color=NEVER
sudo packetbeat test config
sudo packetbeat test output
sleep 2
echo ""
echo "Testing Auditbeat Services"
echo "--------------------------"
sudo service auditbeat status | grep -e "beat.service - " -e "Loaded:" -e "Active:" --color=NEVER
#sudo auditbeat test config
sudo auditbeat test output
sleep 2
echo ""
echo "Testing Heartbeat Services"
echo "--------------------------"
sudo service heartbeat-elastic status | grep -e "beat.service - " -e "Loaded:" -e "Active:" --color=NEVER
sudo heartbeat test config
sudo heartbeat test output
sleep 2

