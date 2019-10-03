#!/bin/bash

image_name="samtools"
version="1.3.1"

docker build -t ${image_name}:${version} .
