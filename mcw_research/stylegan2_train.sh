#!/bin/bash

#SBATCH --partition=dgx
#SBATCH --nodes=1
#SBATCH --gpus=8
#SBATCH --cpus-per-gpu=8

SCRIPT_NAME="StyleGAN2 Train Script - MSOE MCW Research"

WORKSPACE=/data/mcw_research
SCRIPT_PATH=$WORKSPACE/stylegan2/run_training.py
DATASET_DIR=$WORKSPACE/tiles/tfrecords
DATASET_NAME=0.5x_cleaned
STYLEGAN2_CONFIG=config-f
GAMMA=100

SCRIPT_ARGS="--num-gpus=8 --data-dir=$DATASET_DIR --config=$STYLEGAN2_CONFIG --dataset=$DATASET_NAME --mirror-augment=false --gamma=$GAMMA"

CONTAINER="/data/containers/msoe-tensorflow.sif"

## SCRIPT
echo "SBATCH LOAD: ${SCRIPT_NAME}"
date

echo Using Container: "$CONTAINER"
echo Python Executable: "${SCRIPT_PATH}"
echo Dataset Folder: "$TRAINING_DATASET"
echo Dataset Name: "$DATASET_NAME"
echo GAMMA: "$GAMMA"

srun singularity exec --nv -B /data:/data ${CONTAINER} python "${SCRIPT_PATH} ${SCRIPT_ARGS}"

## END SCRIPT
echo "END: " $SCRIPT_NAME
date