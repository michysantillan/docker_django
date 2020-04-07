FROM python:3.7

ENV PYTHONUNBUFFERED 1
RUN mkdir /code

WORKDIR /code
COPY . /code/

RUN pip install -r requirements.txt
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":5000", "--chdir", "misitio", "misitio.wsgi:application"]
