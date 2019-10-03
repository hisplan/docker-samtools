#!/bin/bash

hub="hisplan"
image_name="samtools"
version="1.3.1"

docker tag ${image_name}:${version} ${hub}/${image_name}:${version}

docker login
docker push ${hub}/${image_name}:${version}
