#!/bin/bash
# Enable Ray cluster monitoring
gcloud container clusters update private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --enable-ray-cluster-monitoring

# Verify status
gcloud container clusters describe private-cluster-auto \
    --zone us-west1 \
    --project=api-for-warp-drive \
    --format="json(status,statusMessage)"