FROM xavierdpt/ubuntu-upgraded:latest
ENV DEBIAN_FRONTEND noninteractive
COPY conf conf
RUN cat conf | debconf-set-selections
RUN apt-get install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" slapd ldap-utils
RUN apt-get clean
COPY init.sh init.sh
COPY stop.sh stop.sh
COPY content.ldif content.ldif
COPY import-content.sh import-content.sh
RUN ./import-content.sh
COPY show-user.sh show-user.sh
RUN rm conf import-content.sh content.ldif
CMD ["./init.sh"]
