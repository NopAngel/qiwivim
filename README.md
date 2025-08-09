# Qiwy.nvim

Qiwy is a blazing-fast, minimal yet powerful Neovim configuration designed to feel like a modern IDE. Built with Lua and powered by Packer, it includes LSP, autocompletion, syntax highlighting, file explorer, fuzzy finder, and a beautiful UI.

## ✨ Features

- 📁 File explorer (`nvim-tree`)
- 🔍 Fuzzy finder (`telescope`)
- 🧠 LSP support (`nvim-lspconfig`, `mason`)
- ⚡ Autocompletion (`nvim-cmp`, `LuaSnip`)
- 🎨 Themes: Gruvbox, Catppuccin, Nord, Rose-pine
- 🧪 Syntax highlighting (`treesitter`)
- 🧬 Git integration (`gitsigns`)
- 🧰 Terminal toggle (`toggleterm`)
- 🧞 Statusline (`lualine`)
- 💡 Todo comments, smooth cursor, startup dashboard

## 🚀 Installation

Clone this repo into your Neovim config directory:

```bash
git clone https://github.com/yourusername/qiwy.nvim ~/.config/nvim
```

Then open Neovim and run:

```vim
:Packer
:PackerSync
```

Make sure you have `git`, `curl`, `node`, and `ripgrep` installed on your system.

## 🧠 Requirements

- Neovim ≥ 0.8
- Git
- Node.js (for Treesitter and some LSPs)



## 🧾 License

```
Apache License 2.0

Copyright 2024 Angel

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0
```

---
## 🤝 Contributing

Pull requests are welcome. Feel free to fork and customize Qiwy to your workflow.

---

## 💬 Credits

Built with ❤️ by Angel. Inspired by the Neovim community and modern IDEs.

