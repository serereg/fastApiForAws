FROM python:3.8.10-slim as base

WORKDIR /package
COPY ["package/poetry.lock", "package/pyproject.toml", "/package/"]
RUN pip install poetry \
    && poetry config virtualenvs.create false \
    && poetry install --no-interaction

ENV PYTHONUNBUFFERED 1

COPY package/ /package/
RUN poetry install --no-interaction

FROM base as build

CMD ["python", "-m", "srv"]
