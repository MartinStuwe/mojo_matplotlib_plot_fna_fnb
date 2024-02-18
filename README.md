# mojo_matplotlib_plot_fna_fnb
Build executable by:
```
conda env create --prefix ./conda --file=conda_env.yml
export MOJO_PYTHON_LIBRARY=./conda/lib/libpython3.12.so.1.0
conda activate ./conda
mojo build main.mojo -o main
```
