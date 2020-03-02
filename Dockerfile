FROM ubuntu:latest

RUN apt-get install vim cscope exuberant-ctags gcc gdb binutils qemu lxterminal git
RUN apt-get install bochs vgabios bochsbios bochs-doc bochs-x libltdl7 bochs-sdl bochs-term
RUN apt-get install graphviz cflow

RUN cd ~ && git clone https://github.com/tinyclub/linux-0.11-lab
RUN mv ~/linux-0.11-lab/* ~/
RUN cd ~ && make

ENTRYPOINT [ "bash" ]