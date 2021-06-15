echo "trying pip install..."

if [ "$PY_VER" == "3.6" ]; then
    pip install https://files.pythonhosted.org/packages/b9/ff/14348e487f593f7aa9e17117d89456f687d0bbac0cb36157e6be652cd4bc/numpy-1.17.5-cp36-cp36m-manylinux1_i686.whl
elif [ "$PY_VER" == "3.7" ]; then
    pip install https://files.pythonhosted.org/packages/48/48/786a91a51e0b123485f575ee9a775b5519afe06c759f4e99faeb65f22a0c/numpy-1.17.5-cp37-cp37m-manylinux1_i686.whl
else
    echo "unsupported Python version" && exit 1
fi
