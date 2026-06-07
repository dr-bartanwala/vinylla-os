#point to buildroot's compiled or local
# gcc = /home/Vinylla/vinylla-os/opt/output/host/bin/arm-Buildroot-linux-gnueabihf-gcc

CC ?= gcc

target : hello_world.o 
	${CC} -o hello_world hello_world.o

hello_world.o : 
	${CC} -o hello_world.o -c ./src/main.c

clean:
	rm hello_world hello_world.o
