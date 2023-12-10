ARG BASE_IMAGE
FROM $BASE_IMAGE as base

ENV SHELL /bin/bash
SHELL [ "/bin/bash", "-c" ]

ENV DEBIAN_FRONTEND=noninteractive

RUN echo ${DEBIAN_FRONTEND}

RUN pip3 install \
    Pillow \
    matplotlib \
    jupyter \
    pyyaml \
    pandas \
    scipy \
    ipykernel \
    scikit-learn \
    tensorboard \
    ipympl \
    pyzmq

