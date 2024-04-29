# Calamari-Docker
GPU enabled Docker image for Calamari usage with OCR4all
## Prerequisites
### CPU
- [Docker](https://www.docker.com/)
### GPU
- [Docker](https://www.docker.com/)
- [NVIDIA Container Toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
- Local CUDA / CUDNN setup and an nvidia GPU
## Usage
Build image
```
docker build . -t calamari:gpu
```
Run a command
``` 
docker run --platform linux/amd64 --gpus all --rm calamari:gpu calamari-predict ...
```
