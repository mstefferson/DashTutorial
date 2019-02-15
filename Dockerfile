FROM python:3.7
ADD requirements.txt /app/requirements.txt
# set working directory to /app/
WORKDIR /app/
# set up pip and install packages
RUN apt-get update &&\
pip install -r requirements.txt &&\
apt-get install -y vim
# Run initial command
CMD bash
