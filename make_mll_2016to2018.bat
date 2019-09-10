echo cmake compile DDConvexHull for Maya2016~2018

mkdir build

cd build

mkdir 2016
cd 2016
cmake -G "Visual Studio 15 2017 Win64" -DMAYA_VERSION=2016 ../..
cmake --build . --config Release

cd ..
mkdir 2016.5
cd 2016.5
cmake -G "Visual Studio 15 2017 Win64" -DMAYA_VERSION=2016.5 ../..
cmake --build . --config Release

rem pause

cd ..
mkdir 2017
cd 2017
cmake -G "Visual Studio 15 2017 Win64" -DMAYA_VERSION=2017 ../..
cmake --build . --config Release

cd ..
mkdir 2018
cd 2018
cmake -G "Visual Studio 15 2017 Win64" -DMAYA_VERSION=2018 ../..
cmake --build . --config Release

cd ..
mkdir 2019
cd 2019
cmake -G "Visual Studio 15 2017 Win64" -DMAYA_VERSION=2019 ../..
cmake --build . --config Release

cd ../..