# Non-working

FROM alpine:3.7

RUN apk add --update \
    python3 \
    python3-dev \
    build-base \
  && rm -rf /var/cache/apk/*

WORKDIR /app

COPY . .
RUN pip3 install -r requirements.txt
RUN python3 db_create.py

EXPOSE 5000
CMD ["python3", "run.py"]
