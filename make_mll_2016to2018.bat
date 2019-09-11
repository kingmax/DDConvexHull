@rem https://github.com/digitaldestructo/DDConvexHull
@rem 注意: 这个bat用于编译多个Maya版本的DDConvexHull插件, 作为QuickCollider插件的一部分
@rem 需要有cmake3.x, 各版本Maya devkit, VS2017, cgcmake(https://github.com/chadmv/cgcmake)
@rem 各版本mll放在C:\dev\NBTATOOLS\Maya\plug-ins\DDConvexHull,通过.mod文件使用(C:\dev\NBTATOOLS\Maya\modules\2018\DDConvexHull.mod)

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