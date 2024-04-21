FROM python:3

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove && \
    apt-get autoclean

RUN mkdir /site
COPY . /site/
WORKDIR /site

RUN pip install requirements.txt

RUN pip install --upgrade pip
RUN pip install django

ENTRYPOINT ["python", "modul7.py"]
CMD ["runserver", "0.0.0.0:8000"]

