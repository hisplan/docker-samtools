# docker-samtools

Dockerfile for samtools

## Prerequisites

- Docker must be installed on your machine.

## Build

1. Download the `Dockerfile` from this git repository.

1. Build it and give it a name as `samtools`.

    ```bash
    $ docker build -t samtools .
    ```

1. Verify if the image is correctly built.

    ```bash
    $ docker images samtools
    REPOSITORY     TAG          IMAGE ID         CREATED        SIZE
    samtools       latest       c4ac0043ef77     2 days ago     15 MB
    ```

## Run

```bash
$ docker run --rm -it samtools --help
```

## Push

If you want to push the image to Docker Hub:

```bash
$ docker login
$ docker tag samtools hisplan/samtools:latest
$ docker push hisplan/samtools:latest
```

## Other Notes

- This uses Alpine Linux as base image.
