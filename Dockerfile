FROM python:3.9

ADD . /app
WORKDIR /app

RUN pip install uv && uv sync

ENTRYPOINT [ "bash", "scripts/wait-for-db.sh" ]
CMD ["uv", "run", "main.py"]
