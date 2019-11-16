# Arbitrary Shape Scene Text Detection via Regression-Based Instance Segmentation
## Requirements:  
tensorflow >=1.13  
python3  
Polygon  
sklearn  
Shapely  
Pillow  
numpy  
scipy
cython

## Checkpoints
checkpoints are avaiable at [Google Drive](https://drive.google.com/open?id=1oDsLlv0_l8_Uz7T3raGI0xTEg3dtFKsV), the checkpoints are pre-trained on ICDAR MLT 2017, and finetuned on Total-Text.
move the three files "checkpoints/resnet_v1_50-model.ckpt-0.meta", "checkpoints/resnet_v1_50-model.ckpt-0.index", and "checkpoints/resnet_v1_50-model.ckpt-0.data-00000-of-00001" to the ./checkpoints folder.

## Make
before runing the code, please:  
cd lanms; make; cd ../  
cd polynms; make; cd ../  

## Run  
run the code in two ways:  
### 1. sh run.sh       (with default parameters)  
### 2. sh run_link_method.sh [gpu_list] [link_method]  

## Parameters:  
    link_method: four methods for linking: "RegLink", "Box", "Mask", "DBSCAN"  
    test_data_path: the path of your images.  
    gpu_list: gpu id
    checkpoint_path: path of checkpoint.  
    output_dir: path of results.  

## =========================================
Notably, tensorflow will cost a lot of time at the first image, so if you want to test the speed of our method, please test at least two images. And please add 'TF_CUDNN_USE_AUTOTUNE=0' before python command (has been add in run.sh and sh run_link_method.sh).  
