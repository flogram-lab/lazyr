
FROM swift:5.8.1

RUN apt update
RUN apt install -y libprotobuf-dev protobuf-compiler git make

RUN git clone --depth 1 --branch 1.23.0 https://github.com/grpc/grpc-swift.git

RUN (cd grpc-swift && swift build -c release --product protoc-gen-swift)
RUN (cd grpc-swift && swift build -c release --product protoc-gen-grpc-swift)

RUN (cd grpc-swift/.build/release/ && cp protoc-gen-swift protoc-gen-grpc-swift /usr/bin/.)

VOLUME /source
VOLUME /out/swift

RUN mkdir -p /out/swift

ENTRYPOINT [ "/bin/sh", "-c" , "protoc \
    --proto_path=/source \
    --swift_out=/out/swift \
    --grpc-swift_out=/out/swift \
    --swift_opt=Visibility=Public \
    --grpc-swift_opt=Visibility=Public \
    lazyr.proto && \
    cp -r /out/swift/* /source/lazyr-lib/Sources && \
    cp -r /out/swift/* /source/lazyr-lib/Sources \
  " ]
