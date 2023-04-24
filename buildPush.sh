#!/bin/bash
staticjinja build --outpath=./docs
staticjinja build --outpath=./docs/de --srcpath=./german/templates
docker build -t guestros/firmenai:latest --platform linux/amd64 .
docker push guestros/firmenai:latest