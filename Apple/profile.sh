
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

alias edit='subl'
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
