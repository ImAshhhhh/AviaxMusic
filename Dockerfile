FROM python:3.13-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    ffmpeg \
    curl \
    bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/ImAshhhhh/AviaxMusic.git /app

RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

CMD ["bash", "start"]
