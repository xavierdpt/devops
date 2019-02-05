FROM ubuntu:latest
COPY ./downloaded /downloaded
COPY ./static /static
COPY ./dynamic /dynamic
RUN /static/init.sh
CMD ["/bin/bash"]

