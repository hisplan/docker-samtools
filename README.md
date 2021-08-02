# docker-samtools

Dockerized samtools

## How to Run

```bash
$ docker run --rm -it samtools:1.9 --help
```

## Build Container Image

```bash
./build.sh
```

## Push to Docker Registry

Either you can use the `docker push` command or run `push.sh` (requires [SCING](https://github.com/hisplan/scing)):

```bash
./push.sh
```
