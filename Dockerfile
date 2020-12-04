FROM python:stretch

RUN mkdir /code
WORKDIR /code
COPY . /code/

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]