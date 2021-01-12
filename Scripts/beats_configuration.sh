#!/bin/bash

echo "###########################################"
echo "##### Beats Suite 7.8.0 Configuration #####"
echo "###########################################"
sleep 2
echo ""
echo "Enter Elasticsearch Server IP:"
read elastic
echo ""
echo "Enter Kibana Server IP:"
read kibana
echo ""
echo ""
echo "Configuring filebeat.yml file"
echo "-----------------------------"
echo "Pre-Config Status:"
sudo  cat /etc/filebeat/filebeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
ffile=/etc/filebeat/filebeat.yml
sudo sed -i 's/#host: "localhost:5601"/host: "'$kibana':5601"/' $ffile
sudo sed -i 's/localhost:9200/'$elastic':9200/' $ffile
sleep 3
echo ""
echo "Post-Config Status:"
sudo cat /etc/filebeat/filebeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
echo "Enabling Filebeat Modules ..."
sleep 3
sudo filebeat modules enable elasticsearch
sudo filebeat modules enable netflow
sudo filebeat modules enable osquery
sudo filebeat modules enable system
sudo filebeat modules enable traefik
echo ""
echo ""
echo "Configuring metricbeat.yml file"
echo "-------------------------------"
echo "Pre-Config Status:"
sudo  cat /etc/metricbeat/metricbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
mfile=/etc/metricbeat/metricbeat.yml
sudo sed -i 's/#host: "localhost:5601"/host: "'$kibana':5601"/' $mfile
sudo sed -i 's/localhost:9200/'$elastic':9200/' $mfile
sleep 3
echo ""
echo "Post-Config Status:"
sudo cat /etc/metricbeat/metricbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
echo "Enabling Metricbeat Modules ..."
sleep 3
sudo metricbeat modules enable elasticsearch
sudo metricbeat modules enable etcd
sudo metricbeat modules enable kibana
sudo metricbeat modules enable kvm
sudo metricbeat modules enable linux
sudo metricbeat modules enable memcached
sudo metricbeat modules enable openmetrics
sudo metricbeat modules enable statsd
sudo metricbeat modules enable system
sudo metricbeat modules enable traefik
echo ""
echo ""
echo "Configuring packetbeat.yml file"
echo "-------------------------------"
echo "Pre-Config Status:"
sudo  cat /etc/packetbeat/packetbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
pfile=/etc/packetbeat/packetbeat.yml
sudo sed -i 's/#host: "localhost:5601"/host: "'$kibana':5601"/' $pfile
sudo sed -i 's/localhost:9200/'$elastic':9200/' $pfile
sleep 3
echo ""
echo "Post-Config Status:"
sudo cat /etc/packetbeat/packetbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
echo ""
echo "Configuring auditbeat.yml file"
echo "------------------------------"
echo "Pre-Config Status:"
sudo  cat /etc/auditbeat/auditbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
afile=/etc/auditbeat/auditbeat.yml
sudo sed -i 's/#host: "localhost:5601"/host: "'$kibana':5601"/' $afile
sudo sed -i 's/localhost:9200/'$elastic':9200/' $afile
sleep 3
echo ""
echo "Post-Config Status:"
sudo cat /etc/auditbeat/auditbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
echo ""
echo "Configuring heartbeat.yml file"
echo "------------------------------"
echo "Pre-Config Status:"
sudo  cat /etc/heartbeat/heartbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""
hfile=/etc/heartbeat/heartbeat.yml
sudo sed -i 's/#host: "localhost:5601"/host: "'$kibana':5601"/' $hfile
sudo sed -i 's/localhost:9200/'$elastic':9200/' $hfile
sleep 3
echo ""
echo "Post-Config Status:"
sudo cat /etc/heartbeat/heartbeat.yml | grep -e "setup.kibana:" -e ":5601" -e "output.elasticsearch:" -e ":9200"
sleep 3
echo ""

