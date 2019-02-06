FROM ubuntu:latest

COPY init.sh .

RUN bash init.sh
USER user
ENV HOME /home/user

CMD /bin/bash
