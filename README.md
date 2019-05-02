<!--
    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.
-->
# Unomi Training

## Deployment

###Prerequisite

* Download Unomi: https://unomi.apache.org/download.html
* Download Karaf Runtime: https://karaf.apache.org/download.html
* Download ElasticSearch: https://www.elastic.co/downloads/past-releases/elasticsearch-5-6-3

###Client:
Download Karaf sources and build the war example: https://github.com/apache/karaf/tree/master/examples/karaf-war-example
Start Karak	
Deploy example: 
feature:repo-add mvn:org.apache.karaf.examples/karaf-war-example-features/LATEST/xml
feature:install karaf-war-example

http://localhost:8181/example/

###ElasticSearch:
(If you want to change ES port: transport.tcp.port: 9301 in elasticsearch.yml)


###Unomi:
Change unomi ports: https://unomi.apache.org/manual/latest/#_changing_the_default_configuration
8182/9444
“org.osgi.service.http.port=8181” is only in org.ops4j.pax.web.cfg

bundle:update “bundleNumber”
karaf@root()> bundle:watch