# Dotfiles

My personal dotfiles configuration for a productive development environment.

## What's Inside

- **Bash Profile**: Custom aliases and functions for improved terminal workflow
- **Vim Setup**: Customized vim configuration for efficient text editing
- **Terminal Tools**: Various utilities and configurations for terminal-based development
- **Git Configuration**: Custom git aliases and settings

## Recent Updates

- Added git changed files function using fzf for interactive file selection
- Organized bash profile aliases for better maintainability
- Customized terminal tools for enhanced productivity

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/ChallaHalla/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the setup script:
   ```bash
   ./setup.sh
   ```

The setup script will:
- Configure git and neovim
- Remove any existing config files
- Create symbolic links for all dotfiles
- Initialize and update git submodules
- Handle special cases for Spin environments

## Contributing

Feel free to fork this repository and customize it for your own use. If you have any improvements or suggestions, pull requests are welcome!

## License

This project is open source and available under the MIT License.