FROM ubuntu
RUN apt-get update && apt-get -y install python3 python3-pip
RUN pip3 install flask flask-mysql
COPY app.py /opt/app.py
WORKDIR /opt
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
