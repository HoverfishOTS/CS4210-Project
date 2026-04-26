FROM python:3.11-slim

WORKDIR /workspace

# Install system dependencies if needed (e.g., for compiling certain ML packages)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888