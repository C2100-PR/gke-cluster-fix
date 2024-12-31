#!/bin/bash
gcloud container clusters update private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --enable-ray-cluster-logging