# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to the oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
HIST_STAMPS="yyyy-mm-dd"

# GENERAL ALIASES
alias py="python3"
alias sz="source ~/.zshrc"
alias w="watch"
alias -g g="| grep -iF"

# GIT ALIASES
alias gs="git status"

# KUBERNETES ALIASES
alias k="kubectl"
alias kc="kubectx"
alias kn="kubens"
alias kex="kubectl exec -i -t"
alias kg="kubectl get"
alias kd="kubectl describe"

alias kgp="kubectl get pod"
alias kdp="kubectl describe pod"
alias krmp="kubectl delete pod"

alias kgd="kubectl get deployment"
alias kdd="kubectl describe deployment"
alias krmd="kubectl delete deployment"

alias kgi="kubectl get integration"
alias kdi="kubectl describe integration"
alias krmi="kubectl delete integration"

alias kgcj="kubectl get cronjob"
alias kdcj="kubectl describe cronjob"
alias krmcj="kubectl delete cronjob"

alias kgsa="kubectl get serviceaccount"
alias kdsa="kubectl describe serviceaccount"
alias krmsa="kubectl delete serviceaccount"

alias kgr="kubectl get role"
alias kdr="kubectl describe role"
alias krmr="kubectl delete role"

alias kgrb="kubectl get rolebinding"
alias kdrb="kubectl describe rolebinding"
alias krmrb="kubectl delete rolebinding"

alias kgs="kubectl get service"
alias kds="kubectl describe service"
alias krms="kubectl delete service"

alias kgcm="kubectl get configmap"
alias kdcm="kubectl describe configmap"
alias krmcm="kubectl delete configmap"

alias kgsec="kubectl get secret"
alias kdsec="kubectl describe secret"
alias krmsec="kubectl delete secret"