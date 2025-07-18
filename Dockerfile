FROM python:3.11-slim
WORKDIR /app
COPY requirements.lock ./
RUN pip install --no-cache-dir -r requirements.lock
COPY . .
ENV PYTHONUNBUFFERED=1
CMD ["python", "main.py"]
