FROM ubuntu:latest
ENV DISPLAY=:0
COPY ./downloaded /downloaded
COPY ./static /static
COPY ./dynamic /dynamic
RUN /static/init.sh
USER user
ENV HOME /home/user
CMD /home/user/eclipse/jee-latest-released/eclipse/eclipse
