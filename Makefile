.PHONY: all clean

all: cake

# If you've got 'make', chances are you've also got POSIX.
cake: $(wildcard include/*.h) $(wildcard src/*.c) $(wildcard isrc/lua.c)
	g++ -DLUA_USE_POSIX -Wall -Werror -Wpedantic -Wextra -Iinclude src/*.c isrc/lua.c -lm --std=c++11 -o cake

clean:
	rm -rf cake
