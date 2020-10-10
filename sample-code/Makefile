.PHONY: clean

assembly:
	@mkdir -p build
	arm-linux-gnueabihf-gcc-8 \
	-S -march=armv6 -marm -mfpu=vfp -masm-syntax-unified \
	main.c \
	-o build/main.s \
	-O0

object:
	@mkdir -p build
	arm-linux-gnueabihf-gcc-8 \
	-march=armv6 -marm -mfpu=vfp \
	-c build/main.s \
	-o build/main.o \
	-O0

executable:
	@mkdir -p build
	arm-linux-gnueabihf-gcc-8 \
	-march=armv6 -marm -mfpu=vfp \
	build/main.s \
	-o build/main \
	-O0

noid:
	@mkdir -p build
	arm-linux-gnueabihf-gcc-8 \
	-march=armv6 -marm -mfpu=vfp \
	-Wl,--build-id=none \
	build/main.s \
	-o build/noidmain \
	-O0

clean:
	rm -f build/*

