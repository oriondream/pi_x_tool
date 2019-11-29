#!/bin/bash
tag=$(cat tag)

docker build --tag=$tag .
