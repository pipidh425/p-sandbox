FROM jupyter/scipy-notebook



# Install Tensorflow
RUN conda install --quiet --yes \
    'tensorflow=1.7*' \
    'keras=2.0*' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER