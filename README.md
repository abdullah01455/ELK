# [ elkScribt ]


<p align="center">
  <img src="https://lh3.googleusercontent.com/u/0/drive-viewer/AFDK6gPb_xEAARbOSQW1CAXt-jCYGu1uj5C5fcklEl9FYDtihCBkOWR1HOvd7F_eJXx2sNwR2kT_SduSEtuppl5Hd8LUKjRniQ=w1920-h687" />
</p>

This is a bash script to install ELK stack on [  AWS EC2 instans ]
it's not a real ELK stack it's for educational purpose to learn the concept of ELK stack

# How to it works ? 


1 - Create your own ubuntu ec2 on AWS 



<p align="center">
  <img src="https://lh3.googleusercontent.com/fife/AAbDypDqE7NKUaOQtcmzT7mSVuk22GSz3UZVY28Z13Dqx_Rih3YfQ8rDV6sVHvkR21Mr8gmuF6Vi5xebLnzwjtaylLebiUzaCuqDeY5cB2fIJbsa6fv5pVhshhoCrQB5vzazeGbVLTtZBiPZrtjntBFN1CtX3MLnsMtbPV2xNzEkvCiGzHX0qtHup4gJutkDPc-kDS-UQSWPKR1YYtisg0Lkpq2tCqwxqN7K-dA3TKwaCOBxjWhBhPs42RZIN4DLE61ug8DQgSKfKfji3CGuqbf2jTnL1k-C1X7ff_emIjjXlOeEwBuNC1nizC8Vi5JzFeq_ttx_Abdhx0ofPdNY4bQCd-Hy1huJFt7xp-UcUvZq1kjH__eA013I1wPzvFc96DZZFx4Z1a_jo1W600uPGd2Oe3svkn7RP4qMCyMCeYxy45TLDOOpu7FlT6OMOVayfw9d0n-vci9AWP-nbUMDX3IfuR3dXrDjUZCfnxLAyoWyjM33yoPU67_v-PAMs43RzaVXSS5kanAnTu82lpWqMjbNDKz5g_t82trN7a0OABEHDVkZQEhBsYghiPWwPjguIfdoe6ZhJ-HD0BQ1xag_0yTzHjtL7a1q6hDQIW5YOB2AJLmtEu7QXVMY4OnaWTGvifDbiSWqPg4zbU3J9JioemwRCaHkd_bW_1qrzWfQ6Qhh9BakXOpHAhZ1bEn0Ucd3Rmpeb8VoE5r7DvvitxTyoqK3kSDvxL7SAmATAq8T6bCpKfwFPO7J5exhaV4UiG0kY-G0DNkmwxLSAB-Eqsw-GLu3IBqlIYvOCTk6mXifo8dFC7SNeAmQ2atlKWNlGwChyAQz4te77H5eS1n3ohO0ahHgjWjFGcxOQqyeSJe2mD4jpavvTupFKQB_sSx-HOv8wGDVxu2aI1jAOaVp60g0eRqTjGIkB57l8kEfmpcR_s4QQWiGyDVtHzwZwMg0pg2448YONbH5vFGYHWvNHUEZXNx6R85NA15RJv4Y6Yllkrz7RnlI6AS1R86yQYmeqFOq76EsjeWTo0UfUqj3kygLfolqTVb4oSkhQC_3Xqu8jiv-S8layCV7d7zm1wLjYwzePCfhW67IbTH9Qv9rWTLdrSBGy9GACtEJEdwqCfgXidQ7Lzc6uFrf0GCvKxBzxgYN0bpo3hAh24C3mVnmxgSfhSOvPEVVH-WduY2b98aQ0VT9k_tQPnbYCnCl2e0rWt-B7q0lynq5NLDNffTlN3ZFfqygMzBkl7qImkuUa8g5atbRG-7oJ-_ABGbihBBvNjPbX7RUiG7ywbue1zERWMgznvWLKsfDv9X5-5fdEKuw1sRw2qlCHDbqrF1zM_Urn9USkdAILXXvaehZ23JsRWkQ6CkYYslpm22NLrI6roBEfLv3yseHb3ioi2c7ZT6fD3kqfZN6FLsmhFnYAPNp0Cm4VdlaO0Q1CYdQGK6a0aXW4rBTcbFy_jpbfaRn7xsxXDAYRMeTz5AdYAF1AkHEg79dau4l9Q=w1920-h969" />
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
