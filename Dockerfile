##################################################################################
# Dockerfile to build container images for Machine Learning analysis with Python
# Based on Debian
# Installed libraries: numpy, scipy, scikit-learn, lxml, pandas and matplotlib.pyplot
# This Dockerfile is a copy of the "huanjason/scikit-learn" repository but I install
# two additional packages: pandas and matplotlib.pyplot
############################################################

FROM python:3.7

RUN \
    useradd user \
    && mkdir /home/user \
    && chown user:user /home/user \
    && pip3 install \
        ipython \
        scipy \
        scikit-learn \
        pandas \
        matplotlib

WORKDIR /home/user
