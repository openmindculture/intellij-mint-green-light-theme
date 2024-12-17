echo "build theme distribution $1 ..."
mkdir -pv build/intellij-mint-green-light-theme
rm -rf build/intellij-mint-green-light-theme/*
mkdir -pv build/intellij-mint-green-light-theme/lib
mkdir -pv build/intellij-mint-green-light-theme-$1
cp -rv src/main/resources/* build/intellij-mint-green-light-theme-$1/
cd build
cd intellij-mint-green-light-theme-$1
zip -rv ../intellij-mint-green-light-theme/lib/intellij-mint-green-light-theme-$1.jar ./*
cd ..
mkdir -pv distributions
zip -rv distributions/intellij-mint-green-light-theme-$1.zip.tmp intellij-mint-green-light-theme
rm -f distributions/intellij-mint-green-light-theme-$1.zip
mv distributions/intellij-mint-green-light-theme-$1.zip.tmp distributions/intellij-mint-green-light-theme-$1.zip
echo "done"
