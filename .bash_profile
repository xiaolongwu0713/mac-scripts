#export FREESURFER_HOME=/Applications/freesurfer
#source $FREESURFER_HOME/SetUpFreeSurfer.sh
#export TUTORIAL_DATA=/Volumes/Samsung_T5/data/freesurfer/tutorial
#export SUBJECTS_DIR=$TUTORIAL_DATA/buckner_data/tutorial_subjs
export PATH="/Users/long/scripts/:/Users/long/.pyenv/shims:/usr/local/opt/gnu-sed/libexec/gnubin:${PATH}"
export PYENV_SHELL=bash
source '/usr/local/Cellar/pyenv/1.2.21/libexec/../completions/pyenv.bash'
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}



export CLICOLOR=1
#export LSCOLORS="di=1;34:ln=0;34:ex=0;32"
export LSCOLORS=GxgxcxdxBxegedCbCgacad
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
export PS1="\[\e[1;32m\]\u@\h:\W$ "
export TERM=xterm-color

alias zotero_bib='/usr/bin/automator /Users/long/scripts/zotero_bib.workflow'
alias init_fs_local='source /Users/long/scripts/initfreesurface.sh local'
alias init_fs_ssd='source /Users/long/scripts/initfreesurface.sh ssd'
alias eject_ssd='if diskutil list | grep Samsung_T5; then  diskutil unmountDisk /dev/disk2; diskutil eject /dev/disk2; echo "Unplug the Samsung SSD now"; else echo "No Samsung SSD founded"; fi'
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias cddata='cd /Volumes/Samsung_T5/data'
alias cdlocaldata='cd /Users/long/Documents/data'
alias pwd='pwd -P'

alias ll='ls -al'
alias llt='ls -lthr'
alias matlab='/Applications/Polyspace/R2020a/bin/maci64/MATLABWindow.app/Contents/MacOS/MATLABWindow &'
#alias matlab='/Applications/MATLAB_R2017b.app/bin/maci64/MATLABWindow.app/Contents/MacOS/MATLABWindow'
ps1='[\u@\h \W]\$'
export PATH=/opt/X11/bin:/Applications/Polyspace/R2020a/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash" || true

export PATH="/Users/long/.pyenv/shims:${PATH}"
export PYENV_SHELL=bash
source '/usr/local/Cellar/pyenv/1.2.21/libexec/../completions/pyenv.bash'
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}
export PATH=/usr/local/mysql/bin:$PATH
