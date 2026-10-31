FROM alpine:latest
RUN apk add --no-cache ffmpeg python3
COPY . .
CMD ["sh", "start.sh"]
