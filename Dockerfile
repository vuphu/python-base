FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt /app
COPY src ./src
RUN pip install --no-cache-dir -r requirements.txt

ENV APP_PORT 3000
ENV PYTHONPATH /app

EXPOSE 3000
CMD ["python", "src/main.py"]
