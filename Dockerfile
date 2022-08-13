FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install --no-install-recommends --yes python3 curl ca-certificates python3-distutils
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
WORKDIR /src
ENTRYPOINT ["/bin/sh", "-c", "/root/.poetry/bin/poetry install && /root/.poetry/bin/poetry run pytest"]
