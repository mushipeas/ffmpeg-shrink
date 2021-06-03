FROM jrottenberg/ffmpeg

WORKDIR /shrink

COPY shrink.sh shrink.sh

USER root 
RUN chmod 755 shrink.sh

ENTRYPOINT [ "/shrink/shrink.sh" ]