PATH=/Users/Colton.Saska@ibm.com/miniconda3/bin:$PATH
PATH=/Users/Colton.Saska@ibm.com/miniconda3/condabin:$PATH
PATH=/Users/Colton.Saska@ibm.com/Library/Python/3.7/bin:$PATH
PATH=$PATH:/opt/openafs/bin
PATH=$PATH:/Library/OpenAFS/Tools/root.client/usr/vice/etc
PATH=$PATH:/usr/local/bin
export PATH

alias newest='cd  "$(\ls -1dt ./*/ | head -n 1)"';
alias ..='cd  ..';
alias afs_home='cd /afs/apd.pok.ibm.com/u/csaska'


_git_prompt() {
  local ref="$(command git symbolic-ref -q HEAD 2>/dev/null)"
  echo "${ref:+ (${ref#refs/heads/})}"
}

_failed_status() {
  [ "$PIPESTATUS" -ne 0 ] && printf "$"
}

_success_status() {
  [ "$PIPESTATUS" -eq 0 ] && printf "$"
}

#export PS1='\e[0;36m[\u: \W\$] \e[m'
#export PS1='\u:\W$ '
#  PS1='\[\e[0;31m\]\w\[\e[m\]$(_git_prompt) \[\e[1;31m\]$(_failed_status)\[\e[m\]$(_success_status) '
PS1='\[\e[0;36m\]\u:\W\[\e[m\]$(_git_prompt) \[\e[1;31m\]$(_failed_status)\[\e[m\]$(_success_status) '

eval "$(direnv hook bash)"

# Allow <C-s> to pass through to shell and programs
stty -ixon -ixoff

