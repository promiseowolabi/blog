FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install python-pip -y
RUN apt-get install git -y

WORKDIR /opt

RUN git clone https://github.com/promiseowolabi/blog.git
RUN pip install flask beautifulsoup4 micawber pygments markdown peewee

WORKDIR /opt/blog
CMD python app.py
