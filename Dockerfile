FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg curl \
 && chown -R node:node /home/node/.n8n

USER node

CMD ["n8n"]

