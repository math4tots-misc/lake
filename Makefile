.PHONY: all clean

all: lake

# If you've got 'make', chances are you've also got POSIX.
lake: $(wildcard include/*.h) $(wildcard src/*.c) $(wildcard isrc/lua.c)
	g++ -DLUA_USE_POSIX -Wall -Werror -Wpedantic -Wextra -Iinclude src/*.c isrc/lua.c -lm --std=c++11 -o lake

clean:
	rm -rf lake
