#!/bin/bash
staticjinja build --outpath=./docs
staticjinja build --outpath=./docs/de --srcpath=./german/templates
docker build -t guestros/firmenai:latest --platform linux/amd64 .
docker push guestros/firmenai:latest
# then german
docker build -t guestros/firmenai:latest-german --platform linux/amd64 . -f Dockerfile.de
docker push guestros/firmenai:latest-german