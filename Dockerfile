# Basic Information
FROM sdhibit/rpi-raspbian:latest
MAINTAINER juan ospina <jpospinalo@unal.edu.co>
# utilities
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update -y
RUN apt-get upgrade -y 
RUN apt-get install nano git wget -y
RUN apt-get install python -y
RUN apt-get install python3 -y

#network packages
RUN apt-get install net-tools -y
RUN apt-get install wireless-tools libnl-3-dev -y
RUN apt-get install libnl-3-200 libnl-genl-3-200 libnl-route-3-200 -y
RUN apt-get install batctl bridge-utils -y
WORKDIR /home/root/TLON
COPY batctl_2015.2-2_armhf.deb /home/root/TLON/batctl_2015.2-2_armhf.deb
RUN dpkg -i batctl_2015.2-2_armhf.deb
COPY adhoc.sh /home/root/TLON/adhoc.sh
WORKDIR /home/root/

