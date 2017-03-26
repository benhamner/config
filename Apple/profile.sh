
source ~/.git-completion.sh
source ~/.git-prompt.sh
PS1='\u@\h \W$(__git_ps1 " (%s)")\$ ' # needed for git prompt

export DataPath=~/Data
export GITHUB_PATH=~/Git

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

alias edit='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias f='open -a Finder ./'
alias julia3='/Applications/Julia-0.3.1.app/Contents/Resources/julia/bin/julia'
alias julia='/Applications/Julia-0.4.0-dev-052f54e0fe.app/Contents/Resources/julia/bin/julia'
export PATH=/Users/benhamner/git/config/Apple:/Applications/Julia-0.4.0-dev-052f54e0fe.app/Contents/Resources/julia/bin:$PATH

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

kpython(){
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python python "$@"
}
ikpython() {
  docker run -v $PWD:/tmp/working -w=/tmp/working --rm -it kaggle/python ipython
}
kjupyter() {
  (sleep 3 && open "http://$(docker-machine ip docker2):8888")&
  docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it benhamner/python jupyter notebook --no-browser --ip="*" --notebook-dir=/tmp/working
}
