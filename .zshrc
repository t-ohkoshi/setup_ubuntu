# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# 文字コードはUTF-8
export LANG=ja_JP.UTF-8

# editor
export EDITOR=vim

# コマンドのスペルミスを指摘
setopt correct

# ビープ音を鳴らさない
#setopt no_beep

# tab
setopt complete_in_word

# prompt
autoload -U promptinit; promptinit
prompt pure

# zsh-completions
fpath=(path/to/zsh-completions/src $fpath)

# peco
function peco-history-selection() {
    BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N peco-history-selection
bindkey '^R' peco-history-selection
