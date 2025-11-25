# Dotfiles

A collection of configuration files and installation scripts to set up a productive development environment on Debian/Ubuntu-based systems.

## Features

- **Shell**: Zsh with Oh My Zsh
- **Theme**: Starship cross-shell prompt
- **Terminal Multiplexer**: Tmux with custom configuration
- **Plugins**:
  - `zsh-autosuggestions`
  - `zsh-syntax-highlighting`
  - `vi-mode`
- **Tools**:
  - `git`
  - `kubectl`
  - `docker`
  - `vim` / `neovim`

## Prerequisites

- A Debian or Ubuntu-based Linux distribution.
- `sudo` privileges.
- `curl` and `git` (installed by the script if missing).

## Installation

1.  Clone the repository (if you haven't already):
    ```bash
    git clone <repository-url>
    cd dotfiles
    ```

2.  Run the installation script:
    ```bash
    cd dotfiles
    source install.sh
    ```

    > [!NOTE]
    > The script will install necessary packages using `apt-get`, set up Oh My Zsh, install plugins, and copy configuration files to your home directory.

## Configuration

The installation script automatically symlinks or copies the following configuration files to your home directory:

- **`.zshrc`**: Zsh configuration.
- **`.tmux.conf`**: Tmux configuration.
- **`.gitconfig`**: Git global configuration.
- **`.config/starship.toml`**: Starship prompt configuration.

### Keybindings

**Tmux**:
- Prefix: `Ctrl-b`
- Split Window Horizontally: `\`
- Split Window Vertically: `-`
- Pane Navigation: `h`, `j`, `k`, `l` (Vim-style)
- Resize Pane: `H`, `J`, `K`, `L` (Shift + Vim keys)
- Reload Config: `Prefix + r`

**Zsh**:
- `jj`: Switch to vi-cmd-mode
