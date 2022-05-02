# Docker for Python & Serverless

Provides a base image for python & serverless applications to use for Building (CI).

Includes the basic requirements:

- Serverless (v2)
- Python (2.7 & 3.7)
- Pip
- Pipenv
- Poetry
- Awscli

Intended for use with Bamboo.

To build and push:

```bash
docker build -t keha94/docker-python-serverless:{TAG} .
docker push keha94/docker-python-serverless:{TAG}
```
