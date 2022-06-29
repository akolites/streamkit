FROM nodecg/nodecg

WORKDIR /usr/src/app

COPY ./bundles bundles
COPY ./cfg cfg

# EXPOSE 9090
COPY ./run.sh .
CMD ["/bin/sh", "run.sh"]
