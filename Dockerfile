
FROM python:3

ENV DATA /data

RUN mkdir $DATA
RUN mkdir $DATA/templates

WORKDIR $DATA
ADD app/. $DATA
ADD app/templates/. $DATA/templates

copy requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3","models.py"]

