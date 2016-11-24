FROM calico/node
MAINTAINER Sergey Vasilenko <svasilenko@mirantis.com>

# Set the minimum Docker API version required for libnetwork.
ENV DOCKER_API_VERSION 1.21

# Download and install glibc for use by non-static binaries that require it.
RUN rm -rf /etc/service \
  && rm -f /sbin/restart-calico-confd \
  && ln -s /bin/birdcl /bin/birdc \
  && date > /buildinfo.txt

# Copy in the filesystem - this contains confd, bird configs
COPY filesystem /

CMD ["start_runit"]