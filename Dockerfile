FROM ubuntu

COPY app.py /app/

RUN apt update && apt install -y python3-pip python3

WORKDIR /app

COPY requirements.txt /app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "app.py"]
