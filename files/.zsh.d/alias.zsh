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
  alias mkdir='mkdir -p'

  # 安全設定
  alias cp='cp -i'
  alias rm='rm -i'

  if [ -x "`which hub`" ]; then
    function git() {hub "$@"}
  fi
}
