: "プロンプトを設定" && {
    case ${UID} in
    0)
        PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') %{${fg[red]}%}%n@%m%#%{${reset_color}%} "
        PROMPT2="%B%{${fg[red]}%}%_#%{${reset_color}%}%b "
        SPROMPT="%B%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "
        RPROMPT="%{${fg[green]}%}[%~ %T]%{${reset_color}%}"
        ;;
    *)
        PROMPT="%{${fg[red]}%}%n@%m%%%{${reset_color}%} "
        PROMPT2="%{${fg[red]}%}%_%%%{${reset_color}%} "
        SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "
        RPROMPT="%{${fg[green]}%}[%~ %T]%{${reset_color}%}"
        [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
            #PROMPT="%{${fg[cyan]}%}$(echo ${HOST%%.*} | tr '[a-z]' '[A-Z]') ${PROMPT}"
            PROMPT="%{${fg[cyan]}%}[REMOTE] ${PROMPT}"
        ;;
    esac
}
