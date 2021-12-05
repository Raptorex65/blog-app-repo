#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN='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'
git clone https://$TOKEN@github.com/Raptorex65/blog-app-repo.git
cd /home/ubuntu/blog-app-repo
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/blog-app-repo/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80