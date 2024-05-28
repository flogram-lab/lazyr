FROM swift:5.8.1 AS builder

ADD lazyr-cli /root/source/lazyr-cli

ADD lazyr-lib /root/source/lazyr-lib

ADD modules/wayout/wayout-lib /root/source/modules/wayout/wayout-lib

WORKDIR /root/source/lazyr-cli

RUN swift build -c release -v --disable-sandbox
RUN mkdir -p /usr/local/flogram
RUN mv .build/release/* /usr/local/flogram/.

FROM swift:5.8.1-slim
    
COPY --from=builder /usr/local/flogram /usr/local/flogram

ENTRYPOINT /usr/local/flogram/lazyr-cli