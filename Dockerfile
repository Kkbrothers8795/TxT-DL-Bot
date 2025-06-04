FROM python:3.9.7-slim-buster


WORKDIR /ap
RUN apt -qq update && apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo
COPY . .
RUN  pip3 install --no-cache-dir --upgrade -r requirements.txt
RUN apt install ffmpeg

CMD ["python3", "main.py"]
