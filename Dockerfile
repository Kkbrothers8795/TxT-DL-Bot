FROM python:3.9.7-alpine3.14


WORKDIR /app
COPY . .


# Install necessary dependencies
RUN apk add --no-cache \
    gcc \
    libffi-dev \
    musl-dev \
    ffmpeg \
    aria2 \
    curl-dev \
    python3-dev \
    libressl-dev
    
# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install  --upgrade -r requirements.txt

CMD ["python3", "main.py"]
