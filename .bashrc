alias ei='irb' #Execute IRB

alias g='git status'
alias gp='git push'
alias gst='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'
alias gaa='git add . -A' #Git Add All
alias gd='git diff'
alias gds='git diff --staged'
alias gdl='git diff HEAD~1'
alias gpr='git remote update --prune' # Git Prune: update list of remote branches
alias gbr='git branch -a' #Git Branches
alias gms='git checkout master' # Git Masta
alias gca='git commit --amend'
alias grs='git reset --soft HEAD~1'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

function gm() { # Git Message: commit staged and quote all args as message
  git commit -m "$*"
}

function gdrb() { # Git Delete Remote Branch
  git push origin :$1
}

function gdlb() { # Git Delete Local Branch
  git branch -d $1
}

function gplb { # Git Publish Local Branch
  git push -u origin $1
}

#Shell
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias pd='cd -' #Previous Directory
alias dd='echo $PWD' #Display Directory
alias la='ls -a' #List All
alias ll='ls -GAlh' #Long List
alias h='history'
alias c='clear'
alias v='vim'
