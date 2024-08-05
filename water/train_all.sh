#!/bin/bash

# Example: Running three commands in parallel
python train_cifar.py --checkpoint 'checkpoint/benign_cifar_resnet'&
python train_gtsrb.py --checkpoint 'checkpoint/benign_gtsrb_resnet'&

python train_cifar.py --checkpoint 'checkpoint/benign_cifar_vgg' --model 'vgg'&
python train_gtsrb.py --checkpoint 'checkpoint/benign_gtsrb_vgg' --model 'vgg'&
# python train_watermark_cifar.py &
# python train_watermark_gtsrb.py &

python train_watermark_gtsrb.py --checkpoint 'checkpoint/infected_gtsrb_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' &
python train_watermark_gtsrb.py --checkpoint 'checkpoint/infected_gtsrb_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' &
python train_watermark_gtsrb.py --checkpoint 'checkpoint/infected_gtsrb_vgg/square' --trigger './Trigger1.png' --alpha './Alpha1.png' --model 'vgg' &
python train_watermark_gtsrb.py --checkpoint 'checkpoint/infected_gtsrb_resnet/square' --trigger './Trigger1.png' --alpha './Alpha1.png' --model 'resnet' &

python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/square' --trigger './Trigger1.png' --alpha './Alpha1.png' --model 'vgg' &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/square' --trigger './Trigger1.png' --alpha './Alpha1.png' --model 'resnet' &

python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' --poison-rate 0.05 &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' --poison-rate 0.05 &

python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' --poison-rate 0.1 &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' --poison-rate 0.1 &

python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' --poison-rate 0.15 &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' --poison-rate 0.15 &

python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' --poison-rate 0.2 &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' --poison-rate 0.2 &

python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_vgg/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'vgg' --poison-rate 0.25 &
python train_watermark_cifar.py --checkpoint 'checkpoint/infected_cifar_resnet/line' --trigger './Trigger2.png' --alpha './Alpha2.png' --model 'resnet' --poison-rate 0.25 &


# Wait for all background jobs to finish
wait

echo "All tasks completed."
