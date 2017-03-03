
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#aliases
alias ls="ls -al"
alias cd..="cd .."
alias notebook="jupyter notebook ~/code/notebooks/"
alias projects="cd ~/projects"

#Bash prompt customizations
dateColor=$(tput setaf 6)
userColor=$(tput setaf 202)
locationColor=$(tput setaf 255)
promptColor=$(tput setaf 196)
reset=$(tput sgr0)

PS1="\n\[$dateColor\]\d, \@ \[$reset\]\[$locationColor\]\w\[$reset\]\n\[$userColor\]\u \[$reset\]\[$promptColor\]$ \[$reset\]";
export PS1;

#Used to make git bash_completion to work
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
