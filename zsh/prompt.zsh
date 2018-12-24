autoload -Uz vcs_info
autoload -Uz add-zsh-hook

zstyle ':vcs_info:*' enable git # You can add hg too if needed: `git hg`
zstyle ':vcs_info:git*' formats ' %b'

add-zsh-hook precmd vcs_info

source "$DOTFILES/zsh/git_prompt.zsh"
source "$DOTFILES/zsh/jobs_prompt.zsh"

PROMPT_SYMBOL='❯'

precmd() {
    print -P '\n%F{6}%~'
}

export PROMPT='%(?.%F{207}.%F{160})$PROMPT_SYMBOL%f '
export RPROMPT='$(git_status) $(suspended_jobs)'
