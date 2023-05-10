FROM nvcr.io/nvidia/rapidsai/rapidsai:22.04-cuda11.4-runtime-ubuntu20.04
RUN conda install jupyterlab
# Create working directory to add repo.
WORKDIR /workshop

# Load contents into student working directory.
ADD . .

# Create working directory for students.
WORKDIR /workshop/task

# Please see `entrypoint.sh` for details on how this content is launched.
ADD entrypoint.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
