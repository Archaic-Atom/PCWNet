#!/usr/bin/env bash
set -x
DATAPATH=/data/datasets/rzb/KITTI/Kitti
CUDA_VISIBLE_DEVICES=3,4 python main.py --dataset kitti \
    --datapath $DATAPATH --trainlist ./filenames/kitticombine.txt --testlist ./filenames/kitti15_errortest.txt \
    --epochs 150 --lr 0.001 --lrepochs "50:10" \
    --model gwcnet-gc --logdir ./checkpoints/kitti15/test \
    --test_batch_size 2 --batch_size 2
#    --epochs 300 --lr 0.001 --lrepochs "200:10" \
