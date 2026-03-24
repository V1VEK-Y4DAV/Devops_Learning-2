FROM python:3.12-slim
WORKDIR /app
COPY req.txt ./
RUN pip install --no-cache-dir --default-timeout=100 -r req.txt
COPY . .
CMD ["python", "app.py"]