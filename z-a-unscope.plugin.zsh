# -*- mode: sh; sh-indentation: 4; sh-basic-offset: 4; -*-

# Copyright (c) 2020 Sebastian Gniazdowski
# License MIT

# Get $0 according to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -gA Zinit_Annex_Unscope
Zinit_Annex_Unscope[0]="$0" Zinit_Annex_Unscope[repo-dir]="${0:h}"

# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#std-hash
typeset -gA Plugins
Plugins[UNSCOPE_DIR]=${0:h}

autoload -Uz ∧za-unscope-before-load-handler \
    ∧za-unscope-scope-cmd-help-handler \
    ∧za-unscope-scope-cmd \
    .za-scope-dynamic \
    .za-unscope-list-mappings

# An empty stub to fill the help handler fields
∧za-unscope-help-null-handler() { :; }

# The unscoping-support hook.
@zinit-register-annex "z-a-unscope" \
    hook:before-load-5 \
    ∧za-unscope-before-load-handler \
    ∧za-unscope-help-null-handler \
    "dynamic-unscope''" # New ices

# The subcommand `scope'.
@zinit-register-annex "z-a-unscope" \
    subcommand:scope \
    ∧za-unscope-scope-cmd \
    ∧za-unscope-scope-cmd-help-handler

# The hash that holds mappings of the unscoped plugin names to the
# scoped ones, and also the nick-names that map to the same, however
# are different in that they're not just stripped GitHub user name
# (i.e.: unscoped), but free in general names.

typeset -gA Zinit_Annex_Unscope_Mappings

Zinit_Annex_Unscope_Mappings=(
    # zdharma/null
    "1.   null"				"zdharma/null 0"

    # z-a-as-monitor
    "2.   as-monitor"			"zinit-zsh/z-a-as-monitor 0"
    "3.   monitor"			"zinit-zsh/z-a-as-monitor 0"
                                         
    # z-a-patch-dl                     
    "4.   patch-dl"			"zinit-zsh/z-a-patch-dl 0"
                                         
    # z-a-rust                         
    "5.   rust"				"zinit-zsh/z-a-rust 0"
                                         
    # z-a-bin-gem-node                 
    "6.   bin-gem-node"			"zinit-zsh/z-a-bin-gem-node 0"
    "7.   bgn"				"zinit-zsh/z-a-bin-gem-node 0"

    # zinit-console                 
    "8.   console"			"zinit-zsh/zinit-console 0"
    "9.   consolette"			"zinit-zsh/zinit-console 0"
                                
    # Prezto archive
    "10.  archive"			"PZTM::archive 1"
    "11.  arch"				"PZTM::archive 1"

    # Prezto directory
    "12.  directory"			"PZTM::directory 1"
    "13.  dir"				"PZTM::directory 1"

    # Prezto environment
    "14.  environment"			"PZTM::environment 1"
    "15.  env"				"PZTM::environment 1"

    # Prezto utility
    "16.  utility"			"PZTM::utility 1"
    "17.  util"				"PZTM::utility 1"

    # fast-syntax-highlighting  
    "18.  f-sy-h"		        "zdharma/fast-syntax-highlighting 0"
    "19.  fsh"				"zdharma/fast-syntax-highlighting 0"

    # history-search-multi-word
    "20.  hsmw"				"zdharma/history-search-multi-word 0"

    # ZUI
    "21.  zui"				"zdharma/zui 0"
    "22.  ZUI"				"zdharma/zui 0"

    # Zconvey
    "23.  zconv"			"zdharma/zconvey 0"

    # Zbrowse
    "24.  zbrowse"			"zdharma/zbrowse 0"

    # zzcomplete
    "25.  zzcomp"			"zdharma/zzcomplete 0"
    "26.  zzcom"			"zdharma/zzcomplete 0"

    # zsh-autosuggestions
    "27.  autosuggestions"		"zsh-users/zsh-autosuggestions 0"
    "28.  autosug"			"zsh-users/zsh-autosuggestions 0"
    "29.  asug"				"zsh-users/zsh-autosuggestions 0"
    "30.  z-asug"			"zsh-users/zsh-autosuggestions 0"

    # zsh-syntax-highlighting  
    "31.  z-sy-h"		        "zsh-users/zsh-syntax-highlighting 0"

    # zsh-autocomplete
    "32.  autocomplete"			"marlonrichert/zsh-autocomplete 0"
    "33.  autocomp"			"marlonrichert/zsh-autocomplete 0"
    "34.  aucom"			"marlonrichert/zsh-autocomplete 0"
    "35.  acom"				"marlonrichert/zsh-autocomplete 0"
    "36.  z-aucom"			"marlonrichert/zsh-autocomplete 0"
    "37.  z-acom"			"marlonrichert/zsh-autocomplete 0"

    # zsh-autopair
    "38.  autopair"			"hlissner/zsh-autopair 0"
    "39.  aupair"			"hlissner/zsh-autopair 0"
    "40.  aupa"				"hlissner/zsh-autopair 0"
    "41.  z-aupa"			"hlissner/zsh-autopair 0"

    # zsh-vi-more/evil-registers
    "42.  evil-reg"			"zsh-vi-more/evil-registers 0"
    "43.  vi-reg"			"zsh-vi-more/evil-registers 0"
    "44.  vireg"			"zsh-vi-more/evil-registers 0"

    # vi-motions
    "45.  evil-mot"			"zsh-vi-more/vi-motions 0"
    "46.  vi-mot"			"zsh-vi-more/vi-motions 0"
    "47.  vimot"			"zsh-vi-more/vi-motions 0"
 
    # vi-increment
    "48.  evil-inc"			"zsh-vi-more/vi-increment 0"
    "49.  vi-inc"			"zsh-vi-more/vi-increment 0"
    "50.  viinc"			"zsh-vi-more/vi-increment 0"

    # vi-quote
    "51.  evil-qte"			"zsh-vi-more/vi-quote 0"
    "52.  vi-qte"			"zsh-vi-more/vi-quote 0"
    "53.  viqte"			"zsh-vi-more/vi-quote 0"

    # vi-quote
    "54.  evil-dir-marks"		"zsh-vi-more/directory-marks 0"
    "55.  vi-dir-marks"			"zsh-vi-more/directory-marks 0"
    "56.  vi-dirma"			"zsh-vi-more/directory-marks 0"
    "57.  vidirma"			"zsh-vi-more/directory-marks 0"

    # sharkdp/fd
    "58.  fd"				"sharkdp/fd 0"
    "59.  shark-fd"			"sharkdp/fd 0"

    # sharkdp/bat
    "60.  bat"				"sharkdp/bat 0"
    "61.  shark-bat"			"sharkdp/bat 0"

    # ogham/exa
    "62.  exa"				"ogham/exa 0"

    # zsh-users/zsh-completions
    "63.  zsh-completions"		"zsh-users/zsh-completions 0"
    "64.  completions"			"zsh-users/zsh-completions 0"
    "65.  comps"			"zsh-users/zsh-completions 0"
)

# vim:ft=zsh:tw=80:sw=4:sts=4:noet
