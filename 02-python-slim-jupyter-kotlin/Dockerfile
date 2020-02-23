FROM python:3.8.1-slim-buster

# Issue: https://github.com/nextcloud/docker/issues/380
RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1
RUN apt-get update && apt-get install -y openjdk-11-jdk

RUN pip install jupyterlab kotlin-jupyter-kernel 

VOLUME [ "/home/work" ]
WORKDIR /home/work

# Issue: https://github.com/codenvy/codenvy/issues/2427
CMD [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root" ]

