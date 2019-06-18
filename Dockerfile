FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install python-pip -y
RUN apt-get install git -y

RUN mkdir /opt/blog
WORKDIR /opt/blog

RUN git clone https://github.com/promiseowolabi/blog.git
RUN pip install -r requirement.txt

EXPOSE 8080

CMD python ./app.py