echo "build theme distribution $1 ..."
mkdir -pv build/intellij-spring-green-light-theme
rm -rf build/intellij-spring-green-light-theme/*
mkdir -pv build/intellij-spring-green-light-theme/lib
mkdir -pv build/intellij-spring-green-light-theme-$1
cp -rv src/main/resources/* build/intellij-spring-green-light-theme-$1/
cd build
cd intellij-spring-green-light-theme-$1
zip -rv ../intellij-spring-green-light-theme/lib/intellij-spring-green-light-theme-$1.jar ./*
cd ..
mkdir -pv distributions
zip -rv distributions/intellij-spring-green-light-theme-$1.zip.tmp intellij-spring-green-light-theme
rm -f distributions/intellij-spring-green-light-theme-$1.zip
mv distributions/intellij-spring-green-light-theme-$1.zip.tmp distributions/intellij-spring-green-light-theme-$1.zip
echo "done"
