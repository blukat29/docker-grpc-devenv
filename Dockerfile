FROM blukat29/grpc-cxx:1.21.0

COPY env.sh /env.sh

VOLUME /mnt

ENTRYPOINT ["/env.sh"]
CMD ["/bin/bash"]
