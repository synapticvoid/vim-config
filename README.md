vim-config
==========

## Why, oh why?
Because vim rocks, but you have to heavily configure it to make it a decent text editor.

Heartlessly stealed and recomposed from:
* http://statico.github.io/vim.html
* http://stevelosh.com/blog/2010/09/coming-home-to-vim/
* http://nvie.com/posts/how-i-boosted-my-vim/

## What to do
```shell
# install dependencies
sudo apt-get install vim exuberant-ctags silversearcher-ag

# to use yapf (Python Formatter)
sudo pip install yapf

# clone project and link to vim
git clone https://github.com/synapticvoid/vim-config.git $HOME/.vim
ln -s $HOME/.vim/.vimrc $HOME/.vimrc
```

## Shortcuts
* <Leader> key is remapped to `,`
* <Esc> / <Ctrl> is also mapped to jj (to keep the hand positionned on the hjkl keys)

* `<Leader> + t` = Ctrl-P searching all filenames under current directory (recursive)
* `;` = Ctrl-P in current buffers
* `<Leader> + e` = Toggle NERDTree (directory tree)
* `F8` = Toggle Tagbar (side bar with classes / functions structure)

* `<Ctrl> + n` = Next buffer
* `<Ctrl> + p` = Previous buffer

* `<Leader> + l` = Toggle line number display
* `<Leader> + r` = Toggle relative line number display
* `<Leader> + o` = Toggle paste mode
* `<Leader> + y` = Format python file using yapf

