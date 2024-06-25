FROM python:3.11-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# EXPOSE 5005

# google cloud run default
EXPOSE 8000

CMD ["python", "app.py"]