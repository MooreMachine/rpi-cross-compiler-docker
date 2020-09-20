.PHONY: clean

all:
	@mkdir -p build
	arm-linux-gnueabihf-gcc -march=armv6 -marm main.c -o build/main -O0

assembly:
	@mkdir -p build
	arm-linux-gnueabihf-gcc -S -march=armv6 -marm main.c -o build/main.s -O0

clean:
	rm -f build/*

