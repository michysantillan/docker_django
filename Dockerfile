FROM python:3.7-alpine

WORKDIR /code
COPY . .

RUN apk --no-cache add build-base \
    && apk --no-cache add postgresql-dev \
    && pip install psycopg2 \
    && pip install psycopg2-binary


RUN pip install -r requirements.txt
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":80", "--chdir", "misitio", "misitio.wsgi:application"]




