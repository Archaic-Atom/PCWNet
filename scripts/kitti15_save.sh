#!/usr/bin/env bash
set -x
DATAPATH="/data/datasets/rzb/KITTI/Kitti"
CUDA_VISIBLE_DEVICES=2 python save_disp.py --datapath $DATAPATH --testlist ./filenames/kitti15_test.txt --model gwcnet-gc --loadckpt "/home/xwx/traincode/PCWNet1/checkpoints/kitti15/test/checkpoint_000149.ckpt"