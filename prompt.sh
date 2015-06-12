find_svn_branch() {
  local branch
  if $(svn info &>/dev/null); then
    if branch=$(svn info | awk '/Relative URL:/ {print $3}' | cut -d"/" -f 2-3); then
      if [ $(echo $branch | grep ^trunk) ]; then
        branch=$(echo $branch | cut -d"/" -f1)
      fi
      svn_branch="($branch)"
    else
      svn_branch=""
    fi
  else
    svn_branch=""
  fi
}

find_svn_dirty() {
  if $(svn info &>/dev/null); then
    if [ "$(svn status 2> /dev/null)" != "" ]; then
      svn_dirty="*"
    else
      svn_dirty=""
    fi
  else
    svn_dirty=""
  fi
}

PROMPT_COMMAND="find_svn_branch; find_svn_dirty; $PROMPT_COMMAND"

# Usage SVN enabled prompt with dirty state
# export PS1="\u@\h \w \[$txtcyn\]\$svn_branch\[$txtred\]\$svn_dirty\[$txtrst\]\$ "

