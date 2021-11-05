# Use slim-buster to have a smaller size
# NOTE: alpine is smaller in size but have problems with 
#       installing some of Data Scientist's tools. e.g. pandas
FROM python:3.9-slim-buster

# Set a working directory.
WORKDIR /code

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Copy requirements to install packages.
COPY requirements.txt requirements.txt

# Update and install additional packages.
# NOTE: This would enable you to install some Python packages which require build.
RUN apt-get update \
    && apt-get install gcc make -y \
    && apt-get clean \
    && pip install --no-cache-dir -r requirements.txt

# Copy to the working directory.
COPY . /code
