FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install --no-install-recommends --yes python3 curl ca-certificates python3-distutils
RUN curl -sSL https://install.python-poetry.org | python3 -
WORKDIR /src
ENTRYPOINT ["/bin/sh", "-c", "/root/.local/bin/poetry install && /root/.local/bin/poetry run pytest"]
