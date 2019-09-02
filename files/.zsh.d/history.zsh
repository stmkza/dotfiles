: "履歴" && {
  export HISTFILE="${HOME}/.zsh_history"
  
  # メモリ上の履歴数
  export HISTSIZE=10000

  # ファイル上の履歴数
  export SAVEHIST=1000000

  # 重複を追加しない
  setopt hist_ignore_dups

  # 履歴の共有
  setopt share_history

  # historyコマンドを保存しない
  setopt hist_no_store

  # 余計な空白を削除
  setopt hist_reduce_blanks

  # 時刻を記録
  setopt extended_history

  # インクリメンタルに追加
  setopt inc_append_history

  # スペースで始まる行は削除
  setopt hist_ignore_space

  # 履歴を呼び出してから編集して実行可能にする
  setopt hist_verify

  # 検索キー Shift+左
  bindkey ';2D' history-beginning-search-backward

  # 検索キー Shift+右
  bindkey ';2C' history-beginning-search-forward
}