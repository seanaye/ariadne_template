FROM python:3.7-alpine

RUN apk add --no-cache --virtual .build-deps gcc musl-dev make libffi-dev openssl-dev

RUN pip install -U pip setuptools \
    && pip install --no-cache-dir uvicorn ariadne

RUN apk del .build-deps gcc musl-dev make libffi-dev openssl-dev

VOLUME /code

VOLUME /temp

WORKDIR /code

EXPOSE 5000

CMD [ "uvicorn",  "app:app", "--host", "0.0.0.0", "--port", "5000", "--log-level", "info", "--reload", "--reload-dir", "/code"]