TARGET := math_compute
CC ?=
CF_ALL ?=
CFLAGS = -I../../inc
srcs := main.c

objs := $(srcs:%.c=%.o)
LDFLAGS := -L../../lib  -Wl,-rpath=../../lib
LIBS := -lcalculator


$(TARGET): $(objs)
	@echo here curdir = $(CURDIR)
	$(CC) $(LDFLAGS) -o $(@) $(^) $(LIBS)

%o:%.c
	gcc $(CF_ALL) $(CFLAGS) -o $@ -c $<

.PHONY: clean
clean:
	rm -f $(TARGET)
	rm -f *.o
