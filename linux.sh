DIR=./cpe2InstallTemp
STDINC=/usr/local/include/cpe2
BIN=/usr/local/bin
mkdir $DIR
cd $DIR
git clone https://github.com/DefinitelyNotAGirl/c-2
git clone https://github.com/DefinitelyNotAGirl/stdcpe2
cd c-2
mkdir ./build
mkdir ./build/architectures
mkdir ./build/ABIs
mkdir ./build/formats
mkdir ./build/manglers
make clean
make LD=g++
sudo cp ./cp2 $BIN/cp2
cd ..
sudo mkdir $STDINC
sudo cp stdcpe2/inc/* $STDINC
cd ..
rm -r $DIR
