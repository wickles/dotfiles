#!/usr/bin/env zsh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
#ZSH_THEME_GIT_PROMPT_AHEAD="↑"
#ZSH_THEME_GIT_PROMPT_BEHIND="↓"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="+"

local git_info='$(git_prompt_info)'
local ret_status='%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}✗)'
local datetime='%{$fg[blue]%}%D{[%X]}%{$reset_color%}'
local path='%{$fg[white]%}[%~]%{$reset_color%}'
local userhost='%{$fg[magenta]%}%n@%m%{$reset_color%}'
#local username='%{$fg[cyan]%}%n%{$reset_color%}'
#local host='%{$fg[green]%}%m%{$reset_color%}'

PROMPT="${ret_status} ${datetime} %{$fg[white]%}| ${userhost} ${path} ${git_info}
%{$fg_bold[yellow]%}> %#%{$reset_color%} "

