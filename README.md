# Polarbare
A single file plugin for managing dotfiles with a bare git repository.

Polarbare sets the $GIT_DIR and $GIT_WORK_TREE environment variables inside neovim,
so your statusline correctly displays the branch you are on.

## Installation
with Lazy
```lua
{
    "ecasselton/polarbare.nvim", 
    lazy = true,
    opts = {},
}
```

with Mini
```lua
add({
    source = 'ecasselton/polarbare.nvim',
    checkout = ''
})
```

with Pckr
```lua
{
    "ecasselton/polarbare.nvim", 
    config = function()
        require("polarbare").setup()
    end
}
```

## Default options
```lua
require('polarbare').setup({
    git_dir = "~/.dotfiles",
    work_tree = "~",
})
```
