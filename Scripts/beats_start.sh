#!/bin/bash

echo "###################################"
echo "##### Beats Services Starting #####"
echo "###################################"
sleep 2
echo ""
echo "Beats Services Initial Status"
echo "-----------------------------"
sudo service filebeat status
sudo service metricbeat status
sudo service packetbeat status
sudo service auditbeat status
sudo service heartbeat-elastic status
sleep 2
echo ""
echo "Beats Services Starting"
echo "-----------------------"
sudo service filebeat start
sudo service metricbeat start
sudo service packetbeat start
sudo service auditbeat start
sudo service heartbeat-elastic start
sleep 2
