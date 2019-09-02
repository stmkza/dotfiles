: "補完設定" && {
  # 補完
  autoload -U compinit && compinit

  # 自動でpushd(重複なし)
  setopt auto_pushd
  setopt pushd_ignore_dups

  # 自動cd
  setopt auto_cd

  # 修正候補
  setopt correct
  setopt correct_all

  # 補完でヒストリ展開
  setopt hist_expand

  # 補完候補でファイル種別表示
  setopt list_types

  # ディレクトリ名補完でスラッシュ追加
  setopt mark_dirs

  # 補完候補を全て表示
  setopt auto_list

  # 補完候補を自動消去
  setopt always_last_prompt

  # 補完キーをキーで移動
  zstyle ':completion:*' menu select

  # 括弧の対応を補完
  setopt auto_param_keys

  # 補完時大文字小文字を区別しない
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

  # 補完に色をつける
  autoload colors && zstyle ':completion:*' list-colors "${LS_COLORS}"

  # ビープなし
  setopt nolistbeep

  # ディレクトリ移動補完
  zstyle ':completion:*:cd:*' ignore-parents parent pwd

  # zsh-autosuggestionsを入れる
  source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

  # 変数名を補完
  setopt auto_param_keys

  # sudoでも補完
  zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
}
