#!/bin/bash
# 共通初期化処理

################################
# 安全にする
################################

# `>`のリダイレクトで存在するファイルを上書きするのを防ぐ
# `>|`を代わりに使って上書きする
set -C

# エラーで終了
set -e

# 存在しない変数でエラー
set -u

################################
# 関数定義
################################

# リアルパスを取得する
# @param string 元のパス
function realpath () {
    local originalPath
    originalPath=$1

    echo $(cd "$originalPath"; pwd)
}


################################
# 変数定義
################################

# string レポジトリトップの絶対パス
ROOT_DIR=$(realpath "$(dirname "$0")/../")

# string scriptsディレクトリの絶対パス
SCRIPTS_DIR=$(realpath "$ROOT_DIR/scripts/")

# string filesディレクトリの絶対パス
FILES_DIR=$(realpath "$ROOT_DIR/files/")


################################
# 完了！
################################
DOTFILES_SCRIPT_INITIALIZED='true'
