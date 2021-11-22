echo "trying pip install"

if [ "$PY_VER" == "3.7" ]; then
    pip install https://files.pythonhosted.org/packages/78/01/17f8c6c865110694ae8e21ad84288860e6487f55f70c967fbbf43dd59f8f/numpy-1.21.2-cp37-cp37m-manylinux_2_12_i686.manylinux2010_i686.whl
else
    echo "unsupported Python version" && exit 1
fi
