# Polarbare
This is a plugin to make a bare git repository integrate more seamlessly with neovim, particularly when using one to manage your dotfiles.
It works by checking if the current open buffer is part of the git repo you specify.
If it is, then it sets the GIT_DIR and GIT_WORK_TREE environment variables for neovim.

## Installation
Put the following in your neovim config somewhere, depending on your package manager.
```
'ecasselton/polarbare.nvim'
```

## Configuration
Default configuration:
```lua
require('ecasselton/polarbare.nvim').setup({
    git_dir = "~/.dotfiles",
    work_tree = "~",
})
```
