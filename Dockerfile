FROM ubuntu:22.04

WORKDIR /dz1
USER root
RUN apt-get update && apt-get install -y \
    python3 \
    git \
    pip \
    systemctl 
EXPOSE 8080
RUN git clone https://github.com/vov-man/smarthome.git
RUN pip install -r smarthome/3.1-drf-intro/smart_home/requirements.txt
RUN python3 smarthome/3.1-drf-intro/smart_home/manage.py migrate
CMD ["python3", "/dz1", "/smarthome", "/3.1-drf-intro", "/smart_home", "manage.py", "runserver", "0.0.0.0:8080"] 
