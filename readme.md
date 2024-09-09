# docker_mosquito
A docker container to run MQTT
  
### How to build own image based on this repo
1. Clone this project
2. use ``docker build -t foo .``, where ``foo`` is your image name
3. Create a new container by the following command:  
   ``docker run -d -p 1883:1883 -p 9001:9001 \
    -v /path/to/mosquitto.conf:/mosquitto/config/mosquitto.conf \
    -v /path/to/data:/mosquitto/data \
    -v /path/to/log:/mosquitto/log \
    foo``
5. Enjoy
  
### Launch new container from Docker Hub  

Use the following command:  
``docker run -d --name mosquitto -p 1883:1883 -p 9001:9001 \
    -v /path/to/mosquitto.conf:/mosquitto/config/mosquitto.conf \
    -v /path/to/data:/mosquitto/data \
    -v /path/to/log:/mosquitto/log \
    xosadmin/docker-mqtt
``  
