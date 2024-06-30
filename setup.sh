#!/bin/bash

# Determine the directory where the setup.sh script is located
LINUX_CONFIG_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
LINUX_CONFIG_ZSHRC="${LINUX_CONFIG_DIR}/zshrc"
USER_ZSHRC="${HOME}/.zshrc"
SOURCE_CMD="source ${LINUX_CONFIG_ZSHRC}"

# Function to check if the custom.zshrc is already sourced in .zshrc
is_already_sourced() {
    grep -Fxq "${SOURCE_CMD}" "${USER_ZSHRC}"
}

# Function to append the source command to .zshrc
append_source_command() {
    echo -e "\n# Source custom zsh configuration\n${SOURCE_CMD}" >> "${USER_ZSHRC}"
    echo "Appended source command to ${USER_ZSHRC}"
    echo "Run this command to apply the new config:"
    echo "  source ~/.zshrc"
}

# Check if the .zshrc file exists
if [[ -f "${USER_ZSHRC}" ]]; then
    if is_already_sourced; then
        echo "The custom zsh configuration is already sourced in ${USER_ZSHRC}"
    else
        append_source_command
    fi
else
    echo "${USER_ZSHRC} does not exist. Creating it now."
    append_source_command
fi
