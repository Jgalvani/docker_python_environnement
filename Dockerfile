FROM debian:latest
COPY ./install/ ./install/
RUN apt-get update
RUN apt-get upgrade
RUN cat install/packages.txt | xargs apt-get install -y
RUN pip3 install --upgrade pip
RUN pip3 install -r install/requirements.txt
