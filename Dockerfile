FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

COPY . .

CMD ["flask", "run", "--host=0.0.0.0"]
