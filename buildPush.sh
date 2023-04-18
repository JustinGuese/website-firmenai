#!/bin/bash
staticjinja build --outpath=./docs
docker build -t guestros/firmenai:latest .
docker push guestros/firmenai:latest