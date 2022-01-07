FROM amd64/debian:9-slim
RUN apt-get update &&\
    apt-get -y install --no-install-recommends glade \
    libgtk-3-0 \
    libgtk-3-bin &&\
    apt-get clean &&\
    apt-get -y autoremove &&\
    rm -rf /var/lib/apt/lists/* \
    ;
