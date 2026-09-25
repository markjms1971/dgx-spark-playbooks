#!/bin/bash

python3 -m venv .venv

source .venv/bin/activate

echo "---- Installing required packages ----"
pip install -r requirements.txt

echo "---- Configuring the cluster (args: $*) ----"
SPARK_CLUSTER_SETUP_WRAPPER=1 python3 ./spark_cluster_setup.py "$@"

deactivate