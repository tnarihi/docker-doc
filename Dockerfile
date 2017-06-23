FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

RUN apt-get -yqq update \
    && apt-get -yqq install --no-install-recommends \
        python-dev \
        python-pip \
 	python-setuptools \
        doxygen \
        graphviz \
        pandoc \
        plantuml \
        unzip \
	tex-live \
    && pip install -U \
        Sphinx \
        pygments \
        recommonmark==0.4.0 \
        sphinx-rtd-theme \
        sphinxcontrib-actdiag \
        sphinxcontrib-blockdiag \
        sphinxcontrib-nwdiag \
        sphinxcontrib-plantuml \
        sphinxcontrib-seqdiag \
        sphinxcontrib-toc \
    && apt-get -yqq clean \
    && rm -rf /var/lib/apt/lists/* \
