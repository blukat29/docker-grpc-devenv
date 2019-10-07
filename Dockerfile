FROM grpc/cxx:1.12.0

COPY env.sh /env.sh

VOLUME /mnt

ENTRYPOINT ["/env.sh"]
CMD ["/bin/bash"]
