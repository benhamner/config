
source ~/.git-completion.sh
source ~/.git-prompt.sh
PS1='\u@\h \W$(__git_ps1 " (%s)")\$ ' # needed for git prompt

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

alias edit='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias f='open -a Finder ./'
alias julia3='/Applications/Julia-0.3.1.app/Contents/Resources/julia/bin/julia'
alias julia='/Applications/Julia-0.4.0-dev-e22f90edc8.app/Contents/Resources/julia/bin/julia'

cd() { builtin cd "$@"; ls; }               
alias ..='cd ../'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias ~="cd ~"

promptFunc()
{
# right before prompting for the next command, save the previous
# command in a file.
echo "$(date +%Y-%m-%d--%H-%M-%S) $(hostname) $PWD $(history 1)" >> ~/History/.apple_terminal_history
}
PROMPT_COMMAND=promptFunc

