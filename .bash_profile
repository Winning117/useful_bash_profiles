parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# stolen from parrotOS, added time and git branch
PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;34m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;34m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\$PWD \D{%r}\[\033[0;31m\]]\$(parse_git_branch)\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$ \[\e[0m\]"
# changes ls to show color
alias ls="ls -G"
# list hidden directories in color
alias la="ls -aG"
