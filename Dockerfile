#
# youtube-dl Server Dockerfile
#
# https://github.com/zfdev/youtube-dl-proxy
#

# Pull base image.
FROM python:alpine

# Install ffmpeg.
RUN \
  apt-get update && \
  apt-get install -y libav-tools && \
  rm -rf /var/lib/apt/lists/*
  
EXPOSE 8765

VOLUME ["/youtube-dl"]

CMD [ "python", "-u", "./youtube-dl-server.py" ]
