# Colors
BLUE="\[\033[1;34m\]"
CYAN="\[\033[1;36m\]"
YELLOW="\[\033[1;33m\]"
WHITE="\[\033[1;37m\]"
RESET="\[\033[0m\]"

# Prompt Symbols
PROMPT_SYMBOL="❯"

# Git Status Function (Optional)
function parse_git_branch() {
  git branch 2>/dev/null | grep '^*' | colrm 1 2
}

# Customize Prompt
PS1="${CYAN}\u${WHITE}@${YELLOW}\h ${BLUE}\w${WHITE}$(parse_git_branch) ${CYAN}${PROMPT_SYMBOL} ${RESET}"
