.PHONY: clean

assembly:
	@mkdir -p build
	arm-linux-gnueabihf-gcc-8 \
	-S -march=armv6 -marm -mfpu=vfp -masm-syntax-unified \
	main.c \
	-o build/main.s \
	-O0

executable:
	@mkdir -p build
	arm-linux-gnueabihf-gcc-8 \
	-march=armv6 -marm -mfpu=vfp \
	build/main.s \
	-o build/main \
	-O0

clean:
	rm -f build/*

