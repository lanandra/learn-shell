#!/bin/bash

# perform housekeeping for unused docker image and stopped container
yes | docker image prune
yes | docker container prune
