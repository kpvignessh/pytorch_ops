# Pytorch ops
## _C++ frontend_

Currently added fmod and linspace pytorch ops 

# Commands To build
```sh
cd build
```
```sh
cmake -DCMAKE_PREFIX_PATH= /absolute/path/to/libtorch ..
/absolute/path/to - This is the path where libtorch is present(For example, /home/user/Downloads/libtorch-cxx11-abi-shared-with-deps-1.8.1+cpu/libtorch)
```
```sh
cmake --build . --config Release
```
```
To execute the op:
./filename
```
