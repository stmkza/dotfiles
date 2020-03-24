: "Alias" && {
  # lsdで -al をする
  case ${OSTYPE} in
    darwin*)
      alias ls='lsd -al'
      ;;
    *)
      alias ls='lsd -al'
      ;;
  esac

  # mkdir
  alias mkdir='nocorrect mkdir -p'

  # 安全設定
  alias cp='nocorrect cp -i'
  alias rm='rm -i'

  # nocorrect
  alias mv='nocorrect mv'

  if [ -x "`which hub`" ]; then
    function git() {hub "$@"}
  fi

  # ghq
  alias repos='ghq list -p | peco'
  alias repo='cd $(repos)'
}
