# Aliases
# Change directory level
alias ..2='../..'
alias ..3='../../..'
alias ..4='../../../..'

# Colorize cat command output. Requires pygments to be installed. Use 'pip install Pygments'.
alias ccat='pygmentize -g'

# Rsync alias to backup data source directory to target directory. 
# NOTE: The backslash from source is important to copy all its contents to target directory.
alias backup="rsync -avP --recursive --delete --ignore-errors --exclude '.*' /PATH/TO/SOURCE-VOLUME/ /PATH/TO/TARGET-VOLUME"

# Update and upgrade application packages for Debian and Ubuntu Linux distributions
alias upgrade="sudo apt update && sudo apt upgrade -y"

# Alias to call kubectl
alias k='kubectl'
# Colorizes kubectl command output
alias kubectl='kubecolor'

# Change Kubernetes cluster context. Add as many aliases as necessary.
alias dev01='echo -e "\e[38;5;068m░▒▓\e[48;5;068m \e[30m You are now configured to access dev01 environment. \e[0m\e[38;5;068m\uE0B0\e[0m"; export KUBECONFIG=/path/to/.kube/kubeconf'