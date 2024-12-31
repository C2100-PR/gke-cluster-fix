#!/bin/bash
# Enable monitoring and logging
gcloud container clusters update private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --monitoring=SYSTEM \
    --logging=SYSTEM

# Verify status
gcloud container clusters describe private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --format="json(status,statusMessage)"