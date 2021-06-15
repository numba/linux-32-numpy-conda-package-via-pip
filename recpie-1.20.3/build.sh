echo "trying pip install"

if [ "$PY_VER" == "3.7" ]; then
    pip install https://files.pythonhosted.org/packages/b0/73/fa7d49858ace10a526af75092a3b710621e8f0caa23822f2bebaa435da94/numpy-1.20.3-cp37-cp37m-manylinux_2_5_i686.manylinux1_i686.whl
else
    echo "unsupported Python version" && exit 1
fi
