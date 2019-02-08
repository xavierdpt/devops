FROM xavierdpt/ubuntu-jdk:latest
RUN apt-get install -y git firefox ; apt-get clean
ENV DISPLAY=:0
RUN useradd -m user
USER user
ENV HOME /home/user
WORKDIR /home/user
COPY --chown=user:user ./downloaded /home/user
RUN /home/user/eclipse-installer/eclipse-inst
RUN mkdir /home/user/projects
RUN chown user:user /home/user/projects
CMD /home/user/eclipse/jee-latest-released/eclipse/eclipse
