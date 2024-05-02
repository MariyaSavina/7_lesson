FROM ubuntu:18.04
RUN apt update
RUN cp /7_lesson/requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr requirements.txt
RUN cp /7_lesson/app.py /opt/webapp
EXPOSE 5000