# Linux config

This repository contains all my configurations and aliases for zsh. The main configuration file is `zshrc`, which sources other configuration files in the repository.

## Contents

- `setup.sh`: A script to automatically source `zshrc` in your `.zshrc` file.
- `zshrc`: The main configuration file that sources other files in the repository.
- `.zsh` files: Additional configuration files sourced by `zshrc`.

## Setup

Follow these steps to set up your custom zsh configuration:

1. **Clone the Repository**

   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Run the Setup Script**

   This script will ensure that `zshrc` is sourced in your `.zshrc` file.

   ```sh
   ./setup.sh
   ```

3. **Source your .zshrc**

    Source you `~/.zshrc` to apply the config

    ```sh
    source ~/.zshrc
    ```

    Or you can use the reload alias if you already use this config

    ```sh
    reload
    ```
