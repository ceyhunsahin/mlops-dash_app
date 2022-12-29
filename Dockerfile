# syntax=docker/dockerfile:1.4
FROM python:3.10

WORKDIR /dash_app

COPY requirements.txt /dash_app
RUN pip3 install -r requirements.txt

COPY . /dash_app

EXPOSE 8000

ENTRYPOINT ["python3"]
CMD ["dash_app.py"]
