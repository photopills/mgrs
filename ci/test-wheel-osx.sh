#!/bin/bash


python -m pip install pytest

for f in dist/*.whl
do

    python -m pip install $f
done;

cd tests; pytest
