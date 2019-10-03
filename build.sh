#!/bin/bash

image_name="samtools"
version="1.9"

docker build -t ${image_name}:${version} .
