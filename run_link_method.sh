#!/usr/local/env bash
TF_CUDNN_USE_AUTOTUNE=0 python3 -u eval_curve.py \
--test_data_path=./debug_img/ \
--text_scale=512 \
--gpu_list=$1 \
--checkpoint_path=./checkpoints/resnet_v1_50-model.ckpt-0 \
--output_dir=./results/ \
--network='resnet_v1_50' \
--resize_ratio=1 \
--score_map_thresh=0.9 \
--mask_thresh=0.7 \
--no_write_images=False \
--link_method=$2
