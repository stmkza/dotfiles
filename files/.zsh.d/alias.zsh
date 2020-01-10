: "Alias" && {
  # lsで -al をして色つきにする
  case ${OSTYPE} in
    darwin*)
      alias ls='ls -alG'
      ;;
    *)
      alias ls='ls -al --color=auto'
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
}
