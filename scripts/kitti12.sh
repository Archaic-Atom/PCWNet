#!/usr/bin/env bash
set -x
DATAPATH="/data/datasets/rzb/KITTI/Kitti2012"
CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py --dataset kitti \
    --datapath $DATAPATH --trainlist ./filenames/kitti12_all.txt --testlist ./filenames/kitti12_all.txt \
    --epochs 300  --lr 0.001 --batch_size 4 --lrepochs "200:10" \
    --model gwcnet-gc --logdir ./checkpoints/kitti12/test \
    --test_batch_size 4