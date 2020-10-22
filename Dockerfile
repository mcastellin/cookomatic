FROM python:3.9 as builder

COPY requirements.txt .
RUN python -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

RUN pip install -r requirements.txt


FROM python:3.9-slim-buster

COPY --from=builder /opt/venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

COPY . .

CMD ["flask", "run"]
