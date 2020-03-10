FROM python:3.8

WORKDIR /site

ADD requirements.txt /site/

RUN pip install -r requirements.txt

ADD . /site/

EXPOSE 8000

ENV DEBUG=TRUE

# CMD python manage.py runserver 0.0.0.0:8080
