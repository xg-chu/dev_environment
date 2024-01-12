FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel

# setting
ENV TZ=Asia/Tokyo
ENV HOME="/home/mil/x-chu"
ENV PIP_ROOT_USER_ACTION=ignore
ENV DEBIAN_FRONTEND=noninteractive
ENV ZSH_DISABLE_COMPFIX=true
ENV ZDOTDIR=/home/mil/x-chu/.zsh_docker


COPY ./nerfacc-0.5.3-cp310-cp310-linux_x86_64.whl /tmp/nerfacc-0.5.3-cp310-cp310-linux_x86_64.whl
COPY ./nvdiffrast-0.3.1-py3-none-any.whl /tmp/nvdiffrast-0.3.1-py3-none-any.whl

# install 
RUN apt-get update && apt-get install -y apt-utils wget vim git zsh nodejs \
                   && apt-get clean \
                   && rm -rf /var/lib/apt/lists/*


RUN pip install --no-cache-dir iopath==0.1.9 fvcore==0.1.5.post20221221
RUN pip install --no-cache-dir pytorch3d==0.7.5 -f https://dl.fbaipublicfiles.com/pytorch3d/packaging/wheels/py310_cu118_pyt210/download.html
RUN pip install --no-cache-dir mediapipe==0.10.9 tqdm==4.66.1 rich==13.7.0 lmdb==1.4.1 colored==2.2.4 einops==0.7.0 ninja==1.11.1.1 av==11.0.0 gpustat==1.1.1
RUN pip install --no-cache-dir opencv-python==4.9.0.80 scikit-image==0.22.0 onnxruntime-gpu==1.16.3 onnx==1.15.0 transformers==4.36.2
RUN pip install --no-cache-dir lightning==2.1.3 tensorboardX==2.6.2.2
RUN pip install /tmp/nerfacc-0.5.3-cp310-cp310-linux_x86_64.whl
RUN pip install /tmp/nvdiffrast-0.3.1-py3-none-any.whl

WORKDIR /home/mil/x-chu/workspace

ENTRYPOINT [ "/bin/zsh" ]
CMD ["-l"]

### RUN COMMAND ###
# python -m pip wheel git+https://github.com/KAIR-BAIR/nerfacc.git
# python -m pip wheel git+https://github.com/NVlabs/nvdiffrast.git
# docker build -t x-chu/nerf:1.0.0 .
# docker run --net=host --mount type=bind,source=/home/mil/x-chu/,target=/home/mil/x-chu/ --mount type=bind,source=/data/umihebi0/users/x-chu/Data,target=/data/umihebi0/users/x-chu/Data --mount type=bind,source=/data/utsubo0/users/x-chu/Data,target=/data/utsubo0/users/x-chu/Data --name x-chu_nerf_1.0.0 -itd --rm --runtime=nvidia --gpus all x-chu/nerf:1.0.0
# docker exec -it x-chu_nerf_1.0.0 zsh
