#############################
### INCLUDES
#############################

LINUX_CONFIG_DIR="$(dirname "$(readlink -f "${(%):-%N}")")"

source "${LINUX_CONFIG_DIR}/aliases.zsh"
source "${LINUX_CONFIG_DIR}/prompt.zsh"


#############################
### MISC
#############################

# Remove case sensitivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# Remove wildcard errors
unsetopt nomatch




