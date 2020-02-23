FROM jupyter/minimal-notebook:latest

RUN pip install kotlin-jupyter-kernel

VOLUME [ "/home/work" ]

USER root
RUN apt-get update && apt-get install -y openjdk-11-jdk
USER $NB_UID

ENV JUPYTER_ENABLE_LAB=1

CMD [ "start-notebook.sh" ]
