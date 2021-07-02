# docker-samtools

Dockerized samtools

## Build

1. Download the `Dockerfile` from this git repository.

1. Build it and give it a name as `samtools`.

    ```bash
    $ ./build.sh
    ```

1. Verify if the image is correctly built.

    ```bash
    $ docker images samtools
    REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
    samtools            1.9                 008f246d3a26        17 seconds ago      353MB
    ```

## Run

```bash
$ docker run --rm -it samtools:1.9 --help
```

## Push

Configure your Docker registry in `config.sh`, then run:

```bash
$ ./package.sh
```
