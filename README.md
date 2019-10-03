# docker-samtools

Dockerized samtools

## Prerequisites

- Docker must be installed on your machine.

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
    samtools            1.3.1               c625fb59d9ee        14 seconds ago      16.8MB
    ```

## Run

```bash
$ docker run --rm -it samtools:1.3.1 --help
```

## Push

If you want to push the image to Docker Hub:

```bash
$ ./package.sh
```

## Other Notes

- This uses Alpine Linux as base image.
