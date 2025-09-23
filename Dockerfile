FROM ghcr.io/astral-sh/uv:0.8.17-python3.8-alpine

WORKDIR app/

COPY ./app .
RUN uv sync

EXPOSE 8501
CMD ["uv", "run", "app.py"]