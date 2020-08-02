git clone https://github.com/hatem-darweesh/assuremappingtools.git --branch ubuntu18.04_build

version="$(glxinfo | grep "OpenGL version string" | rev | cut -d" " -f1 | rev)"
wget http://us.download.nvidia.com/XFree86/Linux-x86_64/"$version"/NVIDIA-Linux-x86_64-"$version".run
mv NVIDIA-Linux-x86_64-"$version".run NVIDIA-DRIVER.run

docker build -t assurmaptool .
