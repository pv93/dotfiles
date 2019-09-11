export PATH=$PATH

# Various shell aliases 
alias e="echo"
alias ll="ls -l"
alias ..="cd .."
alias ...=".. && .."
alias bp="vim ~/.bash_profile"
alias sbp="source ~/.bash_profile"
alias grep="grep --color --exclude-dir=.git"
alias cl="clear"
alias watch="watch " # allows for use of aliases with watch

# Set size of bash history
export HISTFILESIZE=10000

# Git aliases
alias gst="git status"
alias gfrb="git fetch && git rebase -i origin/master"
alias gcm="git commit"
alias gpu="git push"
alias gpuf="git push -f"
alias gcb="git checkout -b"
alias gqp="git add -u . && git commit -m 'quickpush' && git push" # be careful with me :) 

# Docker aliases
alias dk="docker"
alias dil="docker image list"

# Kubernetes aliases
alias kc='kubectl'
alias kg='kubectl get'
alias kd='kubectl describe'
alias kl='kubectl logs'
alias kgd='kubectl get deploy'
alias kgp='kubectl get pods '
alias kgs='kubectl get svc'
alias kgi='kubectl get ing'
alias kgc='kubectl get componentstatuses'
alias kgns='kubectl get ns'
alias kgno='kubectl get nodes'
alias kgdp='kubectl get deploy'
alias kdd='kubectl describe deploy'
alias kdp='kubectl describe pods'
alias kds='kubectl describe svc'
alias kdi='kubectl describe ing'
alias kdc='kubectl describe componentstatuses'
alias kgc='kubectl config current-context'
alias kuc='kubectl config use-context'
alias kei='kubectl edit ing'
export KUBE_EDITOR="vim" # editor to use for kubectl edit commands

ksns() {
  kubectl config set-context $(kubectl config current-context) --namespace=${1}
}

# AWS assume-role for a given shell session
ar() {
  eval $(assume-role $1)
}

tf() {
  docker run -v $(pwd):/tmp -w /tmp  hashicorp/terraform:0.12.3
}

