basepath=$(cd `dirname $0`; pwd)
echo ${basepath}

cd ${basepath}/WebGPU3rdpart/glfw-3.3.8

if [ -d ./glfw_install ];then
    rm -r glfw_install
fi

if [ -d ./glfw_build ];then 
    rm -rf glfw_build
fi
mkdir glfw_build

cd ${basepath}/WebGPU3rdpart/glfw-3.3.8/glfw_build

cmake ../ \
-DCMAKE_INSTALL_PREFIX=${basepath}/WebGPU3rdpart/glfw-3.3.8/glfw_install

make clean
make -j4
make install

cd ${basepath}

if [ ! -d ./Lib ];then
    mkdir Lib
fi

cd ${basepath}/Lib

if [ -d ./glfw_install ];then
    rm -r glfw_install
fi

cd ${basepath}

cp -r WebGPU3rdpart/glfw-3.3.8/glfw_install Lib/glfw_install