FROM alpine:2.6

COPY ["run.sh", "shutdown.sh", "/"]
RUN mv shutdown.sh /sbin/shutdown &&\
    apk -U add openssh-client open-vm-tools --repository http://alpine.waterlemons2k.com/alpine/v2.6/main &&\
    rm -rf /var/cache/*

ENTRYPOINT [ "/run.sh" ]