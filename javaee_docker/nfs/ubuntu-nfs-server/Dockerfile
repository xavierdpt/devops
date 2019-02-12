FROM xavierdpt/ubuntu-upgraded:latest
RUN apt-get install -y nfs-kernel-server
RUN mkdir /var/nfs/general -p
RUN chown nobody:nogroup /var/nfs/general
RUN echo "/var/nfs/general *(no_subtree_check)" >/etc/exports
CMD ["/bin/bash"]
