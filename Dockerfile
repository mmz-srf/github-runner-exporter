FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY src .

CMD [ "python", "-u",  "runner-exporter.py" ]
