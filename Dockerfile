FROM python:3

RUN mkdir /site
COPY *.py /site/
COPY requirements.txt /site/
WORKDIR /site

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "modul7.py"]
CMD ["runserver", "0.0.0.0:8000"]
