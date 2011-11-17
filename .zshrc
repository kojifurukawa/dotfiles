export LANG=ja_JP.UTF-8

# 補完機能の強化
autoload -U compinit
compinit

# cd 時に自動で push
setopt auto_pushd

# ディレクトリ名だけで cd
setopt auto_cd

# スペルチェック
setopt correct

# Emacsライクキーバインド設定
bindkey -e
export EDITOR=vim

# プロンプトの設定
autoload -U colors
colors

# PROMPT='%~%% '
# PROMPT='%~@%m%% '
PROMPT='%m%% '

# 履歴をファイルに保存する
HISTFILE=$HOME/.zhistory
# メモリ内の履歴の数
HISTSIZE=100000
# 保存される履歴の数
SAVEHIST=100000

setopt hist_ignore_dups
setopt inc_append_history
## ヒストリを共有
setopt share_history

# ls の動作 (属性表示、色つき)。man ls 参照
if [ "$TERM" = "dumb" -o "$TERM" = "emacs" ]
then
  alias ls='/bin/ls -F'
else
  alias ls='/bin/ls -F --color=auto'
fi
# enable color support of ls
#  and also add handy aliases
if [ "$TERM" != "dumb" ]; then
   eval "`dircolors -b`"
   alias ls='ls --color=auto'
   #alias dir='ls --color=auto --format=vertical'
   #alias vdir='ls --color=auto --format=long'
fi

# rm * を実行する前に確認される。
setopt rmstar_wait

# TAB で順に補完候補を切り替える
setopt auto_menu

# ファイル種別を表す記号を末尾に表示
setopt list_types

# 補完候補を詰めて表示
setopt list_packed

# ファイル名の展開を数値的にソート
setopt numeric_glob_sort

# エイリアス
alias h=history
alias screen='screen -U'
alias refe='~/.rubyrefm/refe-1_8_7'

# rvm
#if [[ -s $HOME/.rvm/scripts/rvm ]]; then
#  source $HOME/.rvm/scripts/rvm
#fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"


PATH=/var/lib/gems/1.9.1/bin/:$PATH
export PATH

