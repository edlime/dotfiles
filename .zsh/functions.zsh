
## The following are customized functions to make an efficient Git workflow

# Performs git commit and push of all changes
function launch() {
    git add .
    git commit -a -m "$1"
    git push origin HEAD
}

# Goes through each child directory and performs a git pull
function tow() {
    for name in `ls -d */|sed 's#/##g'`
    do
        echo -e "\e[38;5;214m░▒▓\e[48;5;214m \e[30m  $name \e[0m\e[38;5;214m\uE0B0\e[0m"
        cd $name
        echo "$(tput setaf 1) $(tput setaf 1; git branch --show-current) $(tput sgr0)"
        git pull --all
        cd ..
        echo -e "\n"
    done
}

# Shows the git branch of each child directory
function branch() {
    for name in `ls -d */|sed 's#/##g'`
    do
        echo -e "\e[38;5;214m░▒▓\e[48;5;214m \e[30m  $name \e[0m\e[38;5;214m\uE0B0\e[0m"
        cd $name
        echo "$(tput setaf 1) $(tput setaf 1; git branch --show-current) $(tput sgr0)"
        cd ..
        echo -e "\n"
    done
}

# Shows the git status of each child directory
function status() {
    for name in `ls -d */|sed 's#/##g'`
    do
        echo -e "\e[38;5;214m░▒▓\e[48;5;214m \e[30m  $name \e[0m\e[38;5;214m\uE0B0\e[0m"
        cd $name
        git status
        cd ..
        echo -e "\n"
    done
}