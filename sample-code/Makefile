.PHONY: clean

all:
	@mkdir -p build
	arm-linux-gnueabihf-gcc main.c -o build/main -O0

assembly:
	@mkdir -p build
	arm-linux-gnueabihf-gcc -S main.c -o build/main.s -O0

clean:
	rm -f build/*

