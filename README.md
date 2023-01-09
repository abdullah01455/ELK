# [ elkScribt ]


<p align="center">
  <img src="https://lh3.googleusercontent.com/u/0/drive-viewer/AFDK6gPb_xEAARbOSQW1CAXt-jCYGu1uj5C5fcklEl9FYDtihCBkOWR1HOvd7F_eJXx2sNwR2kT_SduSEtuppl5Hd8LUKjRniQ=w1920-h687" />
</p>

This is a bash script to install ELK stack on [  AWS EC2 instans ]
it's not a real ELK stack it's for educational purpose to learn the concept of ELK stack

# How to it works ? 


1 - Create your own ubuntu ec2 on AWS 


<p align="center">
  <img src="https://lh3.google.com/u/0/d/1L_TFdP2J6qFRzIpEf4ZMw8fw0BkOPYuO=w1920-h969-iv1" />
</p>

2 - when you are create a new security group open Kibana port [ 5601 ] and Elasticsearch port [ 9200 ] logstash port [ 5044 ] and http port [ 80 ]  

3 - ssh or connect to your ec2 instans and login as a root user then clone the elkScript.sh and run the scribt 

```
# to clone the script 
git clone https://github.com/abdullah01455/ELK.git

# go into ELK file 
cd ELK 

# and run the script 
sh elkScript.sh

```

![Alt text]( "Optional title")
![My Remote Image](https://drive.google.com/file/d/1mJEmvWHCn4iOYiFIrMRJlfky2NngsMGq/view?usp=sharing)
