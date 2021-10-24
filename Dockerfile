# syntax=docker/dockerfile:1

FROM python:3.10-slim-buster

# Set non-root user for binder
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

# Set working directory
WORKDIR ${HOME}

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN pip3 install --no-cache-dir notebook
RUN pip3 install --no-cache-dir jupyterlab

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

ENTRYPOINT ["python3", "-m"]
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]