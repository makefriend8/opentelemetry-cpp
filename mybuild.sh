 git submodule update --init --recursive
 git clone https://github.com/google/benchmark.git
 cd benchmark
 cmake -E make_directory "build"
 cmake -E chdir "build" cmake -DBENCHMARK_DOWNLOAD_DEPENDENCIES=off -DCMAKE_BUILD_TYPE=Release ../
 cmake --build "build" --config Release
 cd ..
 cp -r benchmark/build/third_party/googletest benchmark/
 mkdir build
 cd build
 cmake ..
