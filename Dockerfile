FROM tensorflow/tensorflow:latest-gpu-py3-jupyter
USER root
RUN apt-get update -y
RUN apt-get install -y build-essential

USER $NB_USER
#RUN pip install -U spacy
RUN pip install keras
#RUN python -m spacy download en

CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/home/jovyan/work --ip 0.0.0.0 --no-browser --allow-root"]
