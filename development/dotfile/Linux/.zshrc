# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git　zsh-syntax-highlighting)

# User configuration

# export PATH=$HOME/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:$HOME/bin:$HOME/work/download/peco/local/bin:/usr/local/sbin:/usr/sbin:/sbin:

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# prompt
bindkey -e # emacsライクなキーバインド
#bindkey -v # viライクなキーバインド
export LANG=ja_JP.UTF-8 # 日本語環境
export EDITOR=vim # エディタはvi

# 履歴
HISTFILE=~/.zsh_history # historyファイル
HISTFILESIZE=1000000
HISTSIZE=1000000 # ファイルサイズ
SAVEHIST=1000000 # saveする量
setopt hist_ignore_dups # 重複を記録しない
setopt hist_reduce_blanks # スペース排除
setopt share_history # 履歴ファイルを共有
setopt EXTENDED_HISTORY # zshの開始終了を記録

# history 操作
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# alias
#zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias g='git'
alias vi=vim # vi で vim 起動
alias viv='vi ~/.vimrc'
alias setv='source ~/.vimrc'
alias vib='vi ~/.bashrc'
alias setb='source ~/.bashrc'
alias viz='vi ~/.zshrc'
alias setz='source ~/.zshrc'
alias relogin='exec $SHELL -l'
alias be='bundle exec'
alias berc='bundle exec rails c'
alias bedb='bundle exec rails db'
alias bers='bundle exec rails s -b 192.168.33.10'
alias bean='bundle exec annotate'
alias berr='bundle exec rake routes'

alias -g G='| grep'
alias -g X='| xargs'
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g W='| wc'
alias -g S='| sort'
alias -g P='| peco'

###########################################################
# 履歴管理
###########################################################
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zsh_history

# メモリに保存される履歴の件数
export HISTSIZE=1000

# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000

# 色の設定　色が気に入らないからコメントアウト
# export TERM=xterm-256color

# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups

# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space

# ヒストリを呼び
# 出してから実行する間に一旦編集可能
setopt hist_verify

# 余分な空白は詰めて記録
setopt hist_reduce_blanks

# 古いコマンドと同じものは無視
setopt hist_save_no_dups

# historyコマンドは履歴に登録しない
setopt hist_no_store

# 補完時にヒストリを自動的に展開
setopt hist_expand

# 履歴をインクリメンタルに追加
setopt inc_append_history

# インクリメンタルからの検索
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward


# 開始と終了を記録
setopt EXTENDED_HISTORY

#全履歴を一覧表示す
function history-all { history -E 1 }

#historyの選択できるように設定する「Ctrl-x ;」で履歴検索
# function mkcd(){mkdir -p $1 && cd $1}
# source /home/d_tsushima/zsh_plugin/zaw/zaw.zsh

###########################################################

###########################################################
# コマンド履歴pecoの設定
###########################################################
# Ctrl + r コマンド履歴検索
# Ctrl + f ディレクトリ移動検索

function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi

    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

function peco-cd () {
    local selected_dir=$(find ~/ -type d | peco)
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-cd
# bindkey '^x^f' peco-cd
bindkey '^f' peco-cd
###########################################################

###########################################################
# よく使うディレクトリをブックマークする zsh のプラグイン(cd-bookmark)の設定
###########################################################
fpath=($HOME/.oh-my-zsh/custom/plugins/cd-bookmark(N-/) $fpath)
autoload -Uz cd-bookmark
alias cdb='cd-bookmark'
alias cdba='cd-bookmark -a'
alias cdbl='cd-bookmark -l'
alias cdbe='cd-bookmark -e'
# cdba root でカレントディレクトリをrootという名前で登録
# cdb root でrootに登録したパスに移動できる
# cdbで登録されている一覧を表示する
# cdblで登録されているブックマーク一覧を表示する(上と同じ)
# cdbeで登録されているブックマークを管理しているファイルをviで編集できる
# cdb -hでヘルプを参照
###########################################################

###########################################################
# <app_root>ディレクトリにコマンド一発で移動するプラグイン(cd-gitroot)の設定
###########################################################
fpath=($HOME/.oh-my-zsh/custom/plugins/cd-gitroot(N-/) $fpath)
autoload -Uz cd-gitroot
alias cdroot='cd-gitroot'
###########################################################


#######################################
# autojumpを使用できるように設定
#######################################
# 使い方　j ディレクトリ名の一部[tab]
# 例：　j gi[Tab]ってやると 「gi」のディレクトリ名で検索され補完候補に表示される。
# [[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh
[[ -s /home/vagrant/.autojump/etc/profile.d/autojump.sh ]] && source /home/vagrant/.autojump/etc/profile.d/autojump.sh
fpath=($HOME/work/download/j/autojump/bin(N-/) $fpath)
# ~/.local/share/autojump/autojump.txt にディレクトリ名と回数が記録される
# j --stat　で↑を確認できる
#######################################

#######################################
# zsh-bdを使用できるように設定
#######################################
# 使い方　カレントが~/.oh-my-zsh/custom/plugins/zsh-bd/ だった場合
# bd　[tab] で.oh-my-zsh　custom　pluginsとかでてくるので、選択すれば上の階層に一気に飛べる
source $HOME/.oh-my-zsh/custom/plugins/zsh-bd/bd.zsh
#######################################


###########################################################
# 補完
###########################################################
autoload -U compinit # 補完機能
compinit -u # 補完を賢くする
setopt autopushd # cdの履歴表示、cd - で一つ前のディレクトリへ
setopt auto_pushd # cdしたら勝手にpushdする
setopt pushd_ignore_dups # 同ディレクトリを履歴に追加しない
setopt auto_cd # ディレクトリ名のみでcd
setopt list_packed # リストを詰めて表示
setopt list_types # 補完一覧をファイル種別に表示
setopt correct # コマンドのスペルチェックを有効に
###########################################################

###########################################################
# zshのman を素早く確認する設定
###########################################################
# 使い方　zman 検索したいコマンド　例：zman history
function zman() {
    PAGER="less -g -s '+/^       "$1"'" man zshall
}
###########################################################

[ -f ~/.zshrc.include ] && source ~/.zshrc.include # 設定ファイルのinclude



