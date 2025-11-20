# Toolchain
GCC	= riscv64-linux-gnu-gcc
QEMU    = qemu-riscv64

# Files
SRCS    = $(wildcard *.S)
OBJS    = $(SRCS:build/.S=.o)
TARGET  = main.elf

# Default target
all: $(TARGET)

# Link object files into final ELF
$(TARGET): $(OBJS)
	$(GCC) -o $@ $^

# Assemble each .S into .o
%.o: %.S
	$(AS) -o $@ $<

# Run program in QEMU
run: $(TARGET)
	$(QEMU) ./$(TARGET)

# Clean up
clean:
	rm -f $(OBJS) $(TARGET)
