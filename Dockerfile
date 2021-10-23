# syntax=docker/dockerfile:1

FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip install --no-cache-dir notebook
RUN pip install --no-cache-dir jupyterlab

COPY . .

ENTRYPOINT [ "python3", "-m" ]
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]