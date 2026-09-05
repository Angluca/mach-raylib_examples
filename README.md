# Use Makefile
```zsh
# set makefile ARGS (lib/path)
make run file_name
#or
make run file_name ARGS="-L raylibs/path" 
```
# Use Mach
```zsh
mach build . -L lib_path
# or 
mach build . -L lib_path --bin file_name

mach run . --bin file_name
```
