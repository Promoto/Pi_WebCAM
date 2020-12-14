# Pi_WebCAM

Target Board : Raspberry Pi 3 Model B+

Hardware Information:  
https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus/?resellerType=home

(1). Create Yocto Project

1. Building Raspberry Pi Systems with Yocto (*)  
https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html
https://www.hackster.io/marc-antoine-woodcock/yocto-project-and-nas-server-on-raspberry-pi-3-41b58b

2. Reference:    
https://t.codebug.vip/questions-104850.htm  
https://www.youtube.com/watch?v=zVLKPtGCtN4  
http://kcmetercec.top/2019/09/17/yocto_build_raspberry_linux/  
https://subscription.packtpub.com/book/virtualization_and_cloud/9781788399210  

(2). Raspberry Pi META  

1. META DATA:  
https://github.com/agherzan/meta-raspberrypi

2. META DATA Document:  
https://readthedocs.org/projects/meta-raspberrypi/downloads/pdf/latest/
https://meta-raspberrypi.readthedocs.io/_/downloads/en/rocko/pdf/  
https://meta-raspberrypi.readthedocs.io/_/downloads/en/pyro/pdf/

(3). Prepare Package   
 
1. Yocto Project Quick Start  

> sudo apt-get install gawk wget git-core diffstat unzip texinfo build-essential chrpath libsdl1.2-dev xterm

2. Refernce:  
https://docs.yoctoproject.org/  
https://www.yoctoproject.org/docs/1.5/yocto-project-qs/yocto-project-qs.html

(4). Scan the Raspberry Pi IP:  

1. IP Scanner  
https://www.advanced-ip-scanner.com/tw/ 

(5). Real Time Streaming Protocol [RTSP]  

1. RTSP WIKI  
https://zh.wikipedia.org/zh-tw/%E5%8D%B3%E6%99%82%E4%B8%B2%E6%B5%81%E5%8D%94%E5%AE%9A


(6). Local.Conf



(10). opencv cross compile: (到底哪裡錯了 = =??? 幹

Opencv Cross Compile:

git clone https://github.com/opencv/opencv.git
mkdir build
cd build
rm ../CMakeCache.txt

// tool chain: /home/cyber/SDK/sysroots/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux-gnueabi/

cmake 
	-DSOFTFP=ON
	-DCMAKE_TOOLCHAIN_FILE=/home/cyber/SRC/opencv/platforms/linux/arm-gnueabi.toolchain.cmake /home/cyber/SRC/opencv
	-CMAKE_C_FLAGS="-mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/cyber/SDK/sysroots/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi"
	-DCMAKE_C_COMPILER="/home/cyber/SDK/sysroots/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux-gnueabi/arm-ostl-linux-gnueabi-gcc" 
	-CMAKE_CXX_FLAGS="-mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/cyber/SDK/sysroots/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi"
	-DCMAKE_CXX_COMPILER="/home/cyber/SDK/sysroots/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux-gnueabi/arm-ostl-linux-gnueabi-g++" 
	-DCMAKE_LINKER="/home/cyber/SDK/sysroots/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux-gnueabi/arm-ostl-linux-gnueabi-ld --sysroot=/home/cyber/SDK/sysroots/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi"
	-DCMAKE_AR="/home/cyber/SDK/sysroots/x86_64-ostl_sdk-linux/usr/bin/arm-ostl-linux-gnueabi/arm-ostl-linux-gnueabi-ar"
	
	
cmake -DCMAKE_C_COMPILER="arm-ostl-linux-gnueabi-gcc -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/cyber/SDK/sysroots/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi" -DCMAKE_CXX_COMPILER="arm-ostl-linux-gnueabi-g++ -mthumb -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7 --sysroot=/home/cyber/SDK/sysroots/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi" -DCMAKE_LINKER="arm-ostl-linux-gnueabi-ld --sysroot=/home/cyber/SDK/sysroots/cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi" -DCMAKE_AR="arm-ostl-linux-gnueabi-ar"
	-DSOFTFP=ON
	-DCMAKE_TOOLCHAIN_FILE=/home/cyber/SRC/opencv/platforms/linux/arm-gnueabi.toolchain.cmake /home/cyber/SRC/opencv
	
reference:
https://docs.opencv.org/master/d0/d76/tutorial_arm_crosscompile_with_cmake.html

(n). eBook  
https://www.yoctoproject.org/docs/1.7.3/dev-manual/dev-manual.pdf  
https://oiipdf.com/yocto-for-raspberry-pi
https://tldp.org/LDP/lkmpg/2.6/lkmpg.pdf







 

