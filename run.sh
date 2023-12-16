#!/bin/bash

data_dir='./domainbed/data/'
algorithm='ERM'
dataset='PACS'
resnet18=true
batch_size=32
data_augmentation=false

for test_env in {0..3}
do
    python ./train.py \
        --data_dir=$data_dir \
        --algorithm $algorithm \
        --dataset $dataset \
        --test_env $test_env \
        --hparams "{\"resnet18\": $resnet18, \"batch_size\": $batch_size, \"data_augmentation\": $data_augmentation}"
done