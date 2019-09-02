: "Enviroment Variables" && {
  if [[ $OSTYPE == darwin* ]]; then
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
    export PATH="/usr/local/opt/openssl/bin:$PATH"
    export PATH="/usr/local/opt/sqlite/bin:$PATH"
    export PATH="/usr/local/opt/llvm/bin:$PATH"
    export PATH="/usr/local/opt/binutils/bin:$PATH"
    export LDFLAGS="-L/usr/local/opt/openssl/lib"
    export CPPFLAGS="-I/usr/local/opt/openssl/include"
  fi

  export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"

  export LANG=ja_JP.UTF-8
}
