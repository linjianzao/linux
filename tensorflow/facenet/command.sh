#!/usr/bin/env bash

#切分数据
for N in {1..4}; do python src/align/align_dataset_mtcnn.py /home/ubuntu/ai/datasets/lfw/raw /home/ubuntu/ai/datasets/lfw/lfw_mtcnnpy_160 --image_size 160 --margin 32 --random_order --gpu_memory_fraction 0.25 & done

#
python src/validate_on_lfw.py /home/ubuntu/ai/datasets/lfw/lfw_mtcnnpy_160 /home/ubuntu/ai/model/20170512-110547

#Train a classifier on LFW
python src/classifier.py TRAIN /home/ubuntu/ai/datasets/lfw/lfw_mtcnnpy_160  \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/models/lfw_classifier.pkl \
--batch_size 1000 --min_nrof_images_per_class 40 --nrof_train_images_per_class 35 --use_split_dataset


#######基于lfw训练开始######

python src/align/align_dataset_mtcnn.py \
/home/ubuntu/ai/datasets/my/train \
/home/ubuntu/ai/datasets/my/my_mtcnnpy_160 \
--image_size 160 --margin 32 --random_order --gpu_memory_fraction 0.25

python src/classifier.py TRAIN \
/home/ubuntu/ai/datasets/my/my_mtcnnpy_160 \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/lfw_classifier.pkl \
--batch_size 1000  --use_split_dataset



python src/classifier.py CLASSIFY \
/home/ubuntu/ai/datasets/my/my_mtcnnpy_160 \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/lfw_classifier.pkl \
--batch_size 1000 


#######基于lfw训练结束######

##训练自己的
#切分数据
python src/align/align_dataset_mtcnn.py \
/home/ubuntu/ai/datasets/my/raw \
/home/ubuntu/ai/datasets/my/my_mtcnnpy_160 \
--image_size 160 --margin 32 --random_order --gpu_memory_fraction 0.25

#训练数据
python src/classifier.py TRAIN \
/home/ubuntu/ai/datasets/my/my_mtcnnpy_160 \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/my_classifier.pkl \
--batch_size 1000

#测试数据
python src/classifier.py CLASSIFY \
/home/ubuntu/ai/datasets/my/raw \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/my_classifier.pkl \
--batch_size 1000


python src/classifier.py TRAIN \
/home/ubuntu/ai/datasets/my/train \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/my_classifier.pkl \
--batch_size 1000

python src/classifier.py CLASSIFY \
/home/ubuntu/ai/datasets/my/test \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/my_classifier.pkl \
--batch_size 1000

python src/classifier.py CLASSIFY \
/home/ubuntu/ai/datasets/my/aa \
/home/ubuntu/ai/model/20170512-110547/20170512-110547.pb \
/home/ubuntu/ai/model/my_classifier.pkl \
--batch_size 1000
