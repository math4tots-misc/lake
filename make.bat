@REM No POSIX here...
@REM tmpnam/mkstemp issue is probably still here, but the compiler
@REM doesnt bug me about it
@REM Assumes youre using MinGW
@g++ -Wall -Werror -Wpedantic -Wextra -Iinclude src/*.c isrc/lua.c -lm --std=c++11 -o lake
