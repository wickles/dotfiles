ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}✗)"
PROMPT=$'${ret_status} %{$fg[blue]%}%D{[%X]} %{$fg[white]%}| %{$fg[magenta]%}%n@%m %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg_bold[yellow]%}> %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
