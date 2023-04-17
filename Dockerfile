FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x /app/channel/qq/go-cqhttp
CMD ["sh", "-c", "/app/channel/qq/go-cqhttp && python app.py"]
