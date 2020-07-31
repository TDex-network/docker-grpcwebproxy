# docker-grpcwebproxy
Dockerfile for the standalone Grpc Web Proxy


## Build

```sh
$ docker build -t truedex/grpcwebproxy:latest .
```

## Run

```sh
$ docker run --name gwp --network host -t truedex/grpcwebproxy:latest --backend_addr=:9945 --run_tls_server=false --allow_all_origins 
```