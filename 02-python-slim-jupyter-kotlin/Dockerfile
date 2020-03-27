FROM python:3.8.1-slim-buster

# Issue: https://github.com/nextcloud/docker/issues/380
RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1
RUN apt-get update && apt-get install -y openjdk-11-jdk

RUN pip install jupyterlab kotlin-jupyter-kernel 

ENV JKUSER=jk
ENV USER_HOME=/home/jk
RUN groupadd --gid 1000 ${JKUSER} \
    && useradd --home-dir ${USER_HOME} --create-home \
    --uid 1000  --gid 1000 --shell /bin/sh --skel /dev/null ${JKUSER}

USER ${JKUSER}
RUN mkdir ${USER_HOME}/work
WORKDIR ${USER_HOME}/work

VOLUME [ "${USER_HOME}/work" ]
EXPOSE 8888

# Issue: https://github.com/codenvy/codenvy/issues/2427
#CMD [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root" ]
CMD [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888" ]
