FROM python:3.9

WORKDIR /cookomatic

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]
