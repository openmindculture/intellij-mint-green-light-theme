echo "build theme distribution $1 ..."
mkdir -pv build/mint-green-light-theme
rm -rf build/mint-green-light-theme/*
mkdir -pv build/mint-green-light-theme/lib
mkdir -pv build/mint-green-light-theme-$1
cp -rv src/main/resources/* build/mint-green-light-theme-$1/
cd build
cd mint-green-light-theme-$1
zip -rv ../mint-green-light-theme/lib/mint-green-light-theme-$1.jar ./*
cd ..
mkdir -pv distributions
zip -rv distributions/mint-green-light-theme-$1.zip.tmp mint-green-light-theme
rm -f distributions/mint-green-light-theme-$1.zip
mv distributions/mint-green-light-theme-$1.zip.tmp distributions/mint-green-light-theme-$1.zip
echo "done"
