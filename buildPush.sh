#!/bin/bash
staticjinja build --outpath=./docs
docker build -t guestros/firmenai:latest --platform linux/amd64 .
docker push guestros/firmenai:latest