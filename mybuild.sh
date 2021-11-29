 git submodule update --init --recursive
 git clone https://github.com/google/benchmark.git
 cd benchmark
 cmake -E make_directory "build"
 cmake -E chdir "build" cmake -DBENCHMARK_DOWNLOAD_DEPENDENCIES=on -DCMAKE_BUILD_TYPE=Release ../
 cmake --build "build" --config Release
 cd ..
 mkdir build
 cd build
 cmake ..
