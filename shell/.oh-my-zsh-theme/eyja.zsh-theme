ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="✘"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_DIVERGED="↕"
ZSH_THEME_GIT_PROMPT_ADDED="✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="✹"
ZSH_THEME_GIT_PROMPT_DELETED="✖"
ZSH_THEME_GIT_PROMPT_UNTRACKED="✭"
ZSH_THEME_GIT_PROMPT_RENAMED="➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="═"


#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty) $ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

#RPS1='$(git_custom_status) $EPS1'

PROMPT='%n@%{$fg[green]%}%M%{$reset_color%} %2c% %(?.%{$fg[green]%}.%{$fg[red]%})%B$%b '
RPROMPT='$(git_prompt_info)'
