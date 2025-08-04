FROM n8nio/n8n:latest-debian

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678

CMD ["n8n"]
