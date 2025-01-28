# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## ⚡ Requirements

- `Tree-sitter CLI` (Note: This is only necessary if you want to use auto_install feature with Treesitter)
- `ripgrep` - live grep telescope search (`<Leader>fw`)
- `lua51` and `luarocks` - see requirements of [luarocks.nvim](https://github.com/vhyrro/luarocks.nvim)
  > pacman: `sudo pacman -Syu lua51 luarocks`
- `cargo` - required by `blink-cmp`,
  see [README](https://github.com/AstroNvim/astrocommunity/tree/0e1cf1178a6c0b2bfbc1e5e0d4a3009911b07649/lua/astrocommunity/completion/blink-cmp)

## 🛠️ Installation

Make a backup of your current nvim and shared folder

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

> It is recommended to run `:LazyHealth` after installation.
> This will load all plugins and check if everything is working correctly.

Clone the repository

```bash
git clone git@github.com:siuolyppah/astronvimv4_conf.git ~/.config/nvim
```

Start Neovim

```bash
nvim
```

## 📦 Setup

### Manage plugins

- Run `:Lazy check` (`<Leader>pu`) to check for plugin updates
- Run `:Lazy update` (`<Leader>pU`) to apply any pending plugin updates
- Run `:Lazy sync` (`<Leader>pS`) to update and clean plugins
- Run `:Lazy clean` to remove any disabled or unused plugins

### Update Mason packages and plugins

Run `:AstroUpdate` (`<Leader>pa`) to update both Neovim plugins and Mason packages

## Recipes

- [LazyVim News](https://www.lazyvim.org/news)
- [Astronvim Default Plugins](https://docs.astronvim.com/reference/default_plugins/)
