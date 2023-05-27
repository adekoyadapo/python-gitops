FROM python:3.8-slim-buster

ADD requirements.txt /

RUN pip install -r requirements.txt

ADD app.py /

CMD [ "python", "./app.py" ]
