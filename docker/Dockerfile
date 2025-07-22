FROM pytorch/pytorch:2.7.1-cuda12.8-cudnn9-devel

# setting
ENV TZ=Asia/Tokyo
ENV HOME="/home/mil/x-chu"
ENV PIP_ROOT_USER_ACTION=ignore
ENV DEBIAN_FRONTEND=noninteractive
ENV ZSH_DISABLE_COMPFIX=true
ENV ZDOTDIR=/home/mil/x-chu/.zsh_docker


COPY ./pytorch3d-0.7.8-cp311-cp311-linux_x86_64.whl /tmp/pytorch3d-0.7.8-cp311-cp311-linux_x86_64.whl
COPY ./diff_gaussian_rasterization_32d-0.0.0-cp311-cp311-linux_x86_64.whl /tmp/diff_gaussian_rasterization_32d-0.0.0-cp311-cp311-linux_x86_64.whl

# install 
RUN apt-get update && apt-get install -y apt-utils wget vim git zsh nodejs ffmpeg libsm6 libxext6 sudo tmux \
                   && apt-get clean \
                   && rm -rf /var/lib/apt/lists/*


RUN pip install --no-cache-dir iopath==0.1.10 lmdb==1.6.2 av==14.4.0 opencv-python==4.11.0.86 scikit-image==0.25.2 scikit-learn==1.7.0 scipy==1.16.0 onnx2torch==1.5.15 onnx==1.18.0
RUN pip install --no-cache-dir timm==1.0.17 transformers==4.53.2 torchmetrics==1.7.3 gradio==5.38.0 face-alignment==1.4.1 ffmpeg-python==0.2.0 pytubefix==9.2.2 python_speech_features==0.6 huggingface-hub==0.33.4
RUN pip install --no-cache-dir gpustat tqdm rich matplotlib mediapipe lightning ipdb omegaconf librosa fvcore colored
RUN pip install /tmp/pytorch3d-0.7.8-cp311-cp311-linux_x86_64.whl
RUN pip install /tmp/diff_gaussian_rasterization_32d-0.0.0-cp311-cp311-linux_x86_64.whl

WORKDIR /home/mil/x-chu/workspace

ENTRYPOINT [ "/bin/zsh" ]
CMD ["-l"]

### RUN COMMAND ###
# python -m pip wheel git+https://github.com/facebookresearch/pytorch3d.git
# python -m pip wheel git+https://github.com/xg-chu/diff-gaussian-rasterization.git
# python -m pip wheel git+https://github.com/xg-chu/diff-gaussian-rasterization-depth.git
# python -m pip wheel git+https://github.com/KAIR-BAIR/nerfacc.git
# python -m pip wheel git+https://github.com/NVlabs/nvdiffrast.git
# python -m pip wheel git+https://github.com/NVlabs/tiny-cuda-nn/#subdirectory=bindings/torch
# docker build -t x-chu/nerf:1.0.0 .
# docker run --net=host --mount type=bind,source=/home/mil/x-chu/,target=/home/mil/x-chu/ --mount type=bind,source=/data/umihebi0/users/x-chu/Data,target=/data/umihebi0/users/x-chu/Data --mount type=bind,source=/data/utsubo0/users/x-chu/Data,target=/data/utsubo0/users/x-chu/Data --name x-chu_nerf_1.0.0 -itd --shm-size=1024m --rm --runtime=nvidia --gpus all -u $(id -u ${USER}):$(id -g ${USER}) x-chu/nerf:1.0.0
# docker exec -it x-chu_nerf_1.0.0 zsh
