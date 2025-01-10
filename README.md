portaudio-playground
====================
![](https://github.com/dirkarnez/portaudio-playground/actions/workflows/build.yml/badge.svg)

### Using
- [dirkarnez/portaudio-prebuilt](https://github.com/dirkarnez/portaudio-prebuilt)

### TODOs
- [ ] remove logic in .github/workflows/build.yml
  - refer to [dirkarnez/sdcc-playground](https://github.com/dirkarnez/sdcc-playground)
- [ ] Study [obsproject/obs-plugintemplate](https://github.com/obsproject/obs-plugintemplate)


### CMake docs
- [cmake-properties(7) — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/manual/cmake-properties.7.html#target-properties)
- [cmake-commands(7) — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/manual/cmake-commands.7.html)
  - [target_compile_definitions — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_compile_definitions.html)
  - [target_compile_features — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_compile_features.html)
    - `target_compile_features(boost_asio INTERFACE cxx_std_11)`
  - [target_compile_options — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_compile_options.html)
  - [target_link_libraries — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_link_libraries.html)
  - [target_link_options — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_link_options.html)
  - [target_link_directories — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_link_directories.html)
  - [target_include_directories — CMake 3.31.3 Documentation](https://cmake.org/cmake/help/latest/command/target_include_directories.html)

### CMake tutorials
- [CMake设置目标链接选项的两种方法,-CSDN博客](https://blog.csdn.net/sinat_31608641/article/details/128635869)
