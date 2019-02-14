FROM xavierdpt/ubuntu-upgraded:latest
ENV DEBIAN_FRONTEND noninteractive
COPY init.sh init.sh
RUN apt-get install -y nfs-kernel-server runit inotify-tools
RUN mkdir -p /var/nfs/general
RUN chown nobody:nogroup /var/nfs/general
RUN echo "/var/nfs/general *(no_subtree_check)" >/etc/exports
CMD ["./init.sh"]
