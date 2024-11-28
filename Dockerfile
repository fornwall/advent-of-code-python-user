FROM ubuntu:24.04
RUN apt-get update && \
    apt-get install --no-install-recommends --yes python3 curl ca-certificates
RUN curl -sSL https://install.python-poetry.org | python3 -
WORKDIR /src
ENTRYPOINT ["/bin/sh", "-c", "/root/.local/bin/poetry install && /root/.local/bin/poetry run pytest"]
