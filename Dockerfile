FROM python:3.9 as builder

COPY requirements.txt .
RUN python -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

RUN pip install -r requirements.txt

# Copying only required files to run the application
WORKDIR /opt/cookomatic/
COPY requirements.txt \
    .env \
    .flaskenv \
    config.py \
    cookomatic.py \
    ./
COPY app/ ./app
COPY migrations/ ./migrations
COPY resources/ ./resources

FROM python:3.9-slim-buster

WORKDIR /opt/cookomatic

COPY --from=builder /opt/venv /opt/venv
COPY --from=builder /opt/cookomatic /opt/cookomatic

ENV PATH="/opt/venv/bin:$PATH"

CMD ["flask", "run"]
