.PHONY: all abi clean

all: abi

abi:
	git submodule update --init --recursive
	mkdir -p build
	cmake -S . -B build
	$(MAKE) -C build abieos

clean:
	$(MAKE) -C build clean
	rm -rf build
