FROM python:3.10-bullseye

USER app

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "executable" ]

WORKDIR /usr/src/app

COPY ./requirements.txt .

RUN pip install -r /usr/src/app/requirements.txt

COPY . .


EXPOSE 3000

CMD ["uvicorn", "config:app", "--host=127.0.0.1", "--port=3000"]