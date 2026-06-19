New-Item -ItemType SymbolicLink -Path "$HOME\AppData\Local\nvim" -Target "$HOME\dotfiles\common\.config\nvim" -Force
New-Item -ItemType SymbolicLink -Path "$HOME\.ideavimrc" -Target "$HOME\dotfiles\common\.ideavimrc" -Force
