# Yay! High voltage and arrows!

function test {
  git branch >/dev/null 2>/dev/null && echo 'Â±' && return
}

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}|%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}âš¡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}%{$fg[cyan]%}@%{$reset_color%}%{$fg[yellow]%}%m%{$reset_color%}%{$fg[red]%}:%{$reset_color%}%{$fg[cyan]%}%0~%{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}â‡’%{$reset_color%} '
