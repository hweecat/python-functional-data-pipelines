# Designing Functional Data Pipelines in Python

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/hweecat/python-functional-data-pipelines/HEAD)

Exploring the use of functional programming in designing data pipelines with Python

## Prerequisites

- Python 3.10 and newer
- pip 21.3.1
- Docker

## Getting Started

**Note: This repo is not yet ready with official Binder support for Python 3.10 kernel. In the meantime, please clone the repo and run the Docker container based on the instructions below.**

To build the Docker image:

```
docker build --tag fp-data . 
```

To run the Docker image:

```
docker run -it --rm -p 8888:8888 fp-data
```

To run the Docker image and launch JupyterLab on a browser:

```
docker run -it --rm -p 8888:8888 fp-data jupyter lab --ip=0.0.0.0 --port=8888
```

## Description

The objective is to explore the use of functional programming features in Python 3.10 to design data pipelines for reproducibility and maintainability.

Talk first given at EuroPython 2021 on 29 July 2021 before Python 3.10 official release.