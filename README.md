# dotfiles

| Script                                     | Status     | Updated    |
| ------------------------------------------ | ---------- | ---------- |
| [install-mac.sh](install-mac.sh)           | not tested | 2023-11-28 |
| [install-windows.ps1](install-windows.ps1) | not tested | 2023-11-28 |

## About

This repository contains my dotfiles. It is used to setup a new machine.

The setup scripts will install/config the following:

- A package manager (brew or scoop) will install the following packages:
  - git
  - nvm
  - vscode
  - windows terminal (windows only)
- zsh, oh-my-zsh and plugins
- nvm and node (latest LTS) with global packages:
  - pnpm
  - expo
  - @microsoft/inshellisense

and many more...

## Installation

### Mac

```bash
curl -L https://raw.githubusercontent.com/floriaaan/dotfiles/main/install-mac.sh | bash
```

### Windows

```powershell
iwr https://raw.githubusercontent.com/floriaaan/dotfiles/main/install-windows.ps1 -useb | iex
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
Feel free to fork, clone, copy, modify and use this repo as you like.
