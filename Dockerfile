FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y vim cscope exuberant-ctags gcc gdb binutils qemu lxterminal git make
RUN apt-get install -y bochs vgabios bochsbios bochs-doc bochs-x libltdl7 bochs-sdl bochs-term
RUN apt-get install -y graphviz cflow

RUN cd ~ && git clone https://github.com/tinyclub/linux-0.11-lab
RUN mv ~/linux-0.11-lab/* ~/
RUN cd ~ && make

ENTRYPOINT [ "bash" ]