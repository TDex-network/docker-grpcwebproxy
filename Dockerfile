# Start by building the application.
FROM golang:alpine as build


RUN mkdir -p /tmp /scripts
ADD install /
RUN chmod a+x /install
RUN sh /install

# Now copy it into our base image.
FROM alpine:latest

WORKDIR /app

COPY --from=build /grpcwebproxy /app/grpcwebproxy

RUN chmod +x /app/grpcwebproxy

ENTRYPOINT ["/app/grpcwebproxy"]