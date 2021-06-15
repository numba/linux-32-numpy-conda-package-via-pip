Linux-32 NumPy Conda Package via pip
====================================

Conda recpie to build a Numpy conda package from a wheel. These recipes were
created by the Numba team in mid 2021 to continue being able to test Numba with
recent Numpy releases for linux-32 platforms. At the time of writing, the
latest NumPy version was 1.20 and the latest build for linux-32 was 1.15

This uses the instructions at: https://docs.conda.io/projects/conda-build/en/latest/user-guide/wheel-files.html#building-a-conda-package-from-a-wheel-file

Build
-----

The recipes in this repository use `conda_build_config.yaml` to build Numpy
versions accross Python versions.

First clone the repo:

```
$ git clone https://github.com/numba/linux-32-numpy-conda-package-via-pip.git
$ cd linux-32-numpy-conda-package-via-pip
```

You can then obtain and launch a suitable linux-32 container (Also on Docker
for Mac) with a pre-installed miniconda using:

```
$ docker pull numba/ci-linux-32:latest
$ docker run -v $PWD/.:/opt/recipes -it numba/ci-linux-32:latest  /bin/bash
```

Then build the recipes:

```
$ /usr/bin/linux32 conda build recipe-1.17.5/
$ /usr/bin/linux32 conda build recipe-1.20.3/
```

And then upload the resulting conda packages accordingly (watch the commmand
output for details).
