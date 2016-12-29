#!/bin/bash

echo "==>dependencies setup for deep_q_rl"

echo "==>updating current package..."
sudo apt-get update

echo "==>installing OpenCV..."
sudo apt-get install python-opencv

if [ ! -d "./pylearn2" ]
then
echo "==>installing Pylearn2 ..."
# dependencies...
sudo apt-get install libyaml-0-2 python-six
git clone git://github.com/lisa-lab/pylearn2
fi
cd ./pylearn2
python setup.py develop --user
cd ..

if [ ! -d "./ALE" ]
then
echo "==>installing ALE ..."

# dependencies ...
sudo apt-get install libsdl1.2-dev libsdl-gfx1.2-dev libsdl-image1.2-dev cmake

git clone https://github.com/mgbellemare/Arcade-Learning-Environment ALE
cd ./ALE
cmake -DUSE_SDL=ON -DUSE_RLGLUE=OFF .
make -j2
pip install --user .
cd ..
fi

echo "==>All done!"
