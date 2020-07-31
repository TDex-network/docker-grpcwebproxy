# docker-grpcwebproxy
Dockerfile for the standalone Grpc Web Proxy


## Build

```sh
$ docker build -t truedex/grpcwebproxy:latest .
```

## Run

```sh
# We assume the other service is depends_on this to this and is called myservice
$ docker run --name gwp --network local -t truedex/grpcwebproxy:latest --backend_addr=myservice:9945 --run_tls_server=false --allow_all_origins 
```