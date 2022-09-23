FROM python:3.8-alpine

WORKDIR /app
# COPY requirements.txt
COPY requirements.txt app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app
CMD ["waitress-serve", "--host", "127.0.0.1", "--call","hello:app"]
