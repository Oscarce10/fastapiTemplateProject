FROM python:3.10-bullseye

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "executable" ]


RUN useradd -ms /bin/bash app

USER app


WORKDIR /home/app/src/app

COPY ./requirements.txt .

RUN pip install -r /home/app/src/app/requirements.txt

COPY . .


EXPOSE 3000

CMD ["uvicorn", "config:app", "--host=127.0.0.1", "--port=3000"]