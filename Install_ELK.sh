#!/bin/bash

sudo su root



##START##------Install elasticsearch-------------------------

echo "1 - Start install elasticsearch ..."

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
echo "deb https://artifacts.elastic.co/packages/oss-7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install elasticsearch

##START##------[ Enable local network ]-------------------

echo "2 - Enable local network ... "
sudo rm -r /etc/elasticsearch/elasticsearch.yml
sudo printf "path.data: /var/lib/elasticsearch\npath.logs: /var/log/elasticsearch\nnetwork.host: localhost" > /etc/elasticsearch/elasticsearch.yml

##START##------[ Start Elasticsearch ]--------------------

echo "3 - Start Elasticsearch ... "
sudo systemctl start elasticsearch
sudo systemctl enable elasticsearch
curl -X GET "localhost:9200"

##START##------[ Kibana install ]-------------------------

echo "4 - Kibana install ... "
sudo apt install kibana -y
sudo systemctl enable kibana
sudo systemctl start kibana

##START##------[ Install nginx ]-------------------------

echo "5 - Install nginx ... "
sudo apt update -y
sudo apt-get install nginx -y
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
systemctl status nginx

#--install net-tools to get ec2 ip
sudo apt install net-tools -y
#--create env varble called ec2 ip
export ec2_ip=$(curl ifconfig.me)

sudo rm -r /etc/nginx/sites-available/kibana
#--configure the kibana file

sudo printf "
server {
    listen 80;

    server_name $ec2_ip;

    location / {
        proxy_pass http://localhost:5601;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
" > /etc/nginx/sites-available/kibana

#--enable kibana 
sudo ln -s /etc/nginx/sites-available/kibana /etc/nginx/sites-enabled/kibana


##START##------[ Install logstash ]-------------------------

echo "6 - Install logstash ... "

sudo apt install logstash

sudo rm -r /etc/logstash/conf.d/02-beats-input.conf

#--create 02-beats-input.conf file

sudo printf "
input {
  beats {
    port => 5044
  }
}
" > /etc/logstash/conf.d/02-beats-input.conf

##START##------[ elasticsearch output ]-------------------------

echo "7 - elasticsearch output ... "

sudo rm -r /etc/logstash/conf.d/30-elasticsearch-output.conf

sudo echo '
output {
  if [@metadata][pipeline] {
	elasticsearch {
  	hosts => ["localhost:9200"]
  	manage_template => false
  	index => "%{[@metadata][beat]}-%{[@metadata][version]}-%{+YYYY.MM.dd}"
  	pipeline => "%{[@metadata][pipeline]}"
	}
  } else {
	elasticsearch {
  	hosts => ["localhost:9200"]
  	manage_template => false
  	index => "%{[@metadata][beat]}-%{[@metadata][version]}-%{+YYYY.MM.dd}"
	}
  }
}
' > /etc/logstash/conf.d/30-elasticsearch-output.conf

##START##------[ Start and enable logstash ]-------------------------

sudo systemctl start logstash
sudo systemctl enable logstash

echo "Done !!"

echo "




"

echo "Now you can use your url

"

echo "  >>>>  http://$ec2_ip/status   <<<< 


"













