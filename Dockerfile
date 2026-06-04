FROM python:3.12-alpine

WORKDIR /app

COPY . .

EXPOSE 80

RUN pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:app"]
