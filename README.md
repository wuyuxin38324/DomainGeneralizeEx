# DomainGeneralizeEx
image anal &amp; machine vision --2023Fall

## To download the PACS dataset
```
python  ./domainbed/scripts/download.py \
       --data_dir=./domainbed/data
```

## To run the `train.py`
```
python ./train.py\
       --data_dir=./domainbed/data/\
       --algorithm ERM\
       --dataset PACS\
       --test_env 3\
       --hparams '{"resnet18": true, "batch_size": 32, "data_augmentation": false}'
```
It will train the pretrained resnet-18 model on the PAC dataset with ERM alg, and do the val and test(on the env 3). We choose not to do data-augmentation and set batch_size to 32. When finish, it will print output, and write it in the folder. <br>
* In this repo, the default number of workers in data-loading has be modified to 2.
### Attention: <br>
* change the `test_env` to modify the test-domain <br>
* change `model` & `batch_size` & `data_augmentation` & ... in `hparams` <br>
* if you wanna chang the number of workers in data-loading, find N_WORKERS in `datasets.py`
