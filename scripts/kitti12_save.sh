#!/usr/bin/env bash
set -x
DATAPATH="/data/datasets/rzb/KITTI/Kitti2012"
CUDA_VISIBLE_DEVICES=0,1,2,3 python save_disp.py \
--datapath $DATAPATH \
--testlist ./filenames/kitti12_test.txt \
--model gwcnet-gc \
--loadckpt "/home/xwx/traincode/PCWNet1/checkpoints/kitti12/test/checkpoint_000299.ckpt"