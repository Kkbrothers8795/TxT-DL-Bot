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
    libssl-dev \
    libcurl4-openssl-dev \
    python-dev
    
# Install Python dependencies
RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade -r requirements.txt

CMD ["python3", "main.py"]
