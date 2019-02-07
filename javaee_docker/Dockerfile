FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y git firefox
ENV DISPLAY=:0
COPY ./static /static
COPY ./dynamic /dynamic
RUN useradd -m user
USER user
ENV HOME /home/user
COPY ./downloaded /home/user
RUN /static/init.sh
CMD /home/user/eclipse/jee-latest-released/eclipse/eclipse
