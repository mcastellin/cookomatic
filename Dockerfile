FROM python:3.9

WORKDIR /cookomatic

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN apt-get update
RUN apt-get install -qqy binutils


COPY . .

CMD ["flask", "run"]
