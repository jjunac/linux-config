# Load promptinit
autoload -Uz promptinit && promptinit
autoload -Uz vcs_info

prompt_jj_setup() {
    # For colors, check https://misc.flogisoft.com/bash/tip_colors_and_formatting
    prompt_jj_color1="%{[34m%}"   # Line
    prompt_jj_color2="%{[91m%}"   # User & hour
    prompt_jj_color3="%{[32m%}"   # Path
    prompt_jj_color4="%{[35m%}"   # Git
    prompt_jj_color5="%{[96m%}"   # Host
    prompt_jj_color6="%{[33m%}"   # @

    
    prompt_jj_line_1a=""
    prompt_jj_line_1a+="${prompt_jj_color1}╭─┤"
    prompt_jj_line_1a+="${prompt_jj_color2}%n${prompt_jj_color6}@${prompt_jj_color5}%m"
    prompt_jj_line_1a+=" "
    prompt_jj_line_1a+="${prompt_jj_color3}%~"
    prompt_jj_line_1a+=" "
#    prompt_jj_line_1a+="${prompt_jj_color4}\$(__git_ps1 '%s')"
    prompt_jj_line_1a+="${prompt_jj_color1}├"

    prompt_jj_line_1b=""
    prompt_jj_line_1b+="┤${prompt_jj_color2}%*${prompt_jj_color1}├─"

    # Bugged, probably because of UTF8 chars
    # prompt_jj_rline="${prompt_jj_color2}[%?]%{[0m%}--"

    add-zsh-hook precmd prompt_jj_precmd
}

prompt_jj_precmd() {
    prompt_jj_line_1_esc="$(echo $prompt_jj_line_1a$prompt_jj_line_1b | sed -r 's/%\{[^%]*%\}//g')"
    prompt_jj_line_1_exp="$(print -P -- $prompt_jj_line_1_esc)"
    prompt_jj_line_1_size=${#prompt_jj_line_1_exp}
    prompt_jj_line_1_padding_size=$(( COLUMNS - prompt_jj_line_1_size ))
    # Over-correction for UTF-8 chars
    #prompt_jj_line_1_padding_size=$(( prompt_jj_line_1_padding_size + 14))

    if (( prompt_jj_line_1_size > 0 )); then
        prompt_jj_line_1="${prompt_jj_line_1a}$(printf '─%.0s' {1..$prompt_jj_line_1_padding_size})${prompt_jj_line_1b}"
    else
         prompt_jj_line_1="${prompt_jj_line_1a}${prompt_jj_line_1b}"
    fi

    prompt_jj_line="${prompt_jj_line_1}"
    prompt_jj_line+=$'\n'
    prompt_jj_line+="╰─>>> %{[0m%}"

    export PS1=$prompt_jj_line
    export RPS1=""
}

prompt_themes+=( jj )
prompt jj