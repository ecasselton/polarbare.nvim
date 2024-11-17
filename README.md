# Polarbare
Polarbare makes it easier to use neovim when using a bare git repository to manage your dotfiles.
It sets the GIT_DIR and GIT_WORK_TREE environment variables inside neovim.

## Installation
Put the following in your neovim config.
```lua
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
