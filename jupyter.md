# Jupyter Notebook configuration theme
This readme contains my jupyter-notebook configuration based on [jupyter-themes](https://github.com/dunovank/jupyter-themes) and [Making Jupyter Dark Mode Great](https://medium.com/@rbmsingh/making-jupyter-dark-mode-great-5adaedd814db)

```sh
# install jupyterthemes
pip install jupyterthemes
```

```sh
# monokai
jt -t monokai -f fira -fs 13 -nf ptsans -nfs 11 -N -kl -cursw 5 -cursc r -cellw 95% -T
```

Make a file named `00_startup.py` in ~/.ipython/profile_default/startup and stick the following snippet into it, and restart Jupyter.

```py
# import jtplot module in notebook
from jupyterthemes import jtplot

# choose which theme to inherit plotting style from
# onedork | grade3 | oceans16 | chesterish | monokai | solarizedl | solarizedd
jtplot.style(theme='monokai')

# set "context" (paper, notebook, talk, poster)
# scale font-size of ticklabels, legend, etc.
# remove spines from x and y axes and make grid dashed
jtplot.style(context='notebook', fscale=1.4, spines=False, gridlines=False)

# turn on X- and Y-axis tick marks (default=False)
# turn off the axis grid lines (default=True)
# and set the default figure size
jtplot.style(ticks=True, grid=False, figsize=(6, 4.5))

# reset default matplotlib rcParams
jtplot.reset()`
```
