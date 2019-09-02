: "Appearance" && {
  # プロンプトをカラー表示
  autoload -U colors && colors

  if [[ $OSTYPE != darwin* ]]; then
    # dircolorsを設定
    eval `dircolors $HOME/.zsh/.dircolors`
  fi
}
