function man --description 'Format and display manual pages'
    set -lx MANPATH {$__fish_datadir,$fisher_config,$fisher_home}/man $MANPATH ""
    
    set -q plugin_colored_man_pages_blink; and set blink $plugin_colored_man_pages_blink; or set blink (set_color -o red)
    set -q plugin_colored_man_pages_bold; and set bold $plugin_colored_man_pages_bold; or set bold (set_color -o 5fafd7)
    set -q plugin_colored_man_pages_standout; and set standout $plugin_colored_man_pages_standout; or set standout (set_color 949494)
    set -q plugin_colored_man_pages_underline; and set underline $plugin_colored_man_pages_underline; or set underline (set_color -u afafd7)
    set end (printf "\e[0m")
    
    # less
    set -lx LESS_TERMCAP_mb $blink
    set -lx LESS_TERMCAP_md $bold
    set -lx LESS_TERMCAP_me $end
    set -lx LESS_TERMCAP_so $standout
    set -lx LESS_TERMCAP_se $end
    set -lx LESS_TERMCAP_us $underline
    set -lx LESS_TERMCAP_ue $end
    set -lx LESS '-R'
    
    command man $argv
end
