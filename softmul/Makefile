CC = riscv64-unknown-elf-gcc
AR = riscv64-unknown-elf-ar
CFLAGS = -march=rv64imac -mabi=lp64

all: build/libsoftmul.a

build/libsoftmul.a: build/mulhu64_soft.o
	$(AR) rcs $@ $^

build/mulhu64_soft.o: src/mulhu64_soft.S
	@mkdir -p build
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f build/*