#!/bin/bash
# Fine-tune GR00T on fr5 cherry pick-and-place data

cd /home/za382/Isaac-GR00T

CUDA_VISIBLE_DEVICES=0 /home/za382/.local/bin/uv run python gr00t/experiment/launch_finetune.py \
    --base-model-path ./pretrained_models/GR00T-N1.6-3B \
    --dataset-path ./cherry_data \
    --embodiment-tag NEW_EMBODIMENT \
    --modality-config-path ./examples/fr5/fr5_config.py \
    --output-dir ./outputs/fr5_cherry \
    --num-gpus 1 \
    --global-batch-size 32 \
    --learning-rate 1e-4 \
    --max-steps 20000 \
    --save-steps 5000 \
    --no-tune-llm \
    --no-tune-visual \
    --tune-projector \
    --tune-diffusion-model
