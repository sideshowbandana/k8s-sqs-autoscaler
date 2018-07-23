FROM python:3.6
WORKDIR /usr/src/app

COPY scripts/dependencies.sh /tmp/dependencies.sh
RUN /tmp/dependencies.sh

COPY requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip && pip install -r /tmp/requirements.txt

COPY . .
