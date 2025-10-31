CC = gcc
CFLAGS = -g
LDFLAGS = -lm

# Default target
all: image image_pthread

# Serial version
image: image.c image.h
	$(CC) $(CFLAGS) image.c -o image $(LDFLAGS)

# Pthread version
image_pthread: image.c image.h
	$(CC) -O2 -g image.c -o image_pthread -lm -lpthread

image_openmp: image_openmp.c image.h
	$(CC) -O2 -g image_openmp.c -o image_openmp -fopenmp -lm



# Clean up binaries and outputs
clean:
	rm -f image image_pthread output.png image_openmp
