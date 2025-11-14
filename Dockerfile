# Import image with Python 3.10
FROM python:3.10-alpine
# Copy requirements,txt to /tmp in container
COPY ./requirements.txt /tmp
# Install dependencies in container
RUN pip install -r /tmp/requirements.txt
# Copy app (en src) to /src in container
COPY src /src
# Run app (in directory src) when the container starts ...
CMD python3 /src/app.py