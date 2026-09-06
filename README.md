## mach-raylib
[mach-raylib](https://github.com/Angluca/mach-raylib)  
Mach language bindings for [Raylib](https://github.com/raysan5/raylib)
* download deps
```zsh
mach dep pull
```
## Use Makefile
```zsh
# set makefile ARGS (lib/path)
# build
make
# or
make file_name

# run
make run file_name
# or
make run file_name ARGS="-L raylibs/path" 
```
## Use Mach
```zsh
# build
mach build . -L lib/path
# or 
mach build . -L lib/path --bin file_name

# run
mach run . --bin file_name
```
