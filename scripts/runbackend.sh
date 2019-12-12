docker run \
--runtime=nvidia \
--net=host \
--ipc=host \
-e http_proxy=$http_proxy \
-e https_proxy=$https_proxy \
-e no_proxy=$no_proxy \
-e DISPLAY=$DISPLAY \
-e CONTAINER_ID={{.ID}} \
-e NVIDIA_DRIVER_CAPABILITIES=all \
-v $PWD:/workspace \
-v $HOME/.Xauthority:/root/.Xauthority \
-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
--rm -ti \
ubuntu18-torch:volumetricPrimitivesPytorch
