CC = gcc
CFLAGS= -g -fsanitize=address 
all: memory_leak
%.o :%.c
	$(CC) $(CFLAGS) $^
clean:
	rm -rf *.o memory_leak
