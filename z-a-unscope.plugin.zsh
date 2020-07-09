# -*- mode: sh; sh-indentation: 4; sh-basic-offset: 4; -*-

# Copyright (c) 2020 Sebastian Gniazdowski
# License MIT

# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -gA Zinit_Annex_Unscope
Zinit_Annex_Unscope[0]="$0" Zinit_Annex_Unscope[repo-dir]="${0:h}"

autoload -Uz ∧za-unscope-before-load-handler .za-unscope-dynamic

# An empty stub to fill the help handler fields
∧za-unscope-help-null-handler() { :; }

@zinit-register-annex "z-a-unscope" \
    hook:before-load-5 \
    ∧za-unscope-before-load-handler \
    ∧za-unscope-help-null-handler \
    "" # No ices

# The hash that holds mappings of the unscoped plugin names to the
# scoped ones, and also the nick-names that map to the same, however
# are different in that they're not just stripped GitHub user name
# (i.e.: unscoped), but in general free names.

typeset -gA Zinit_Annex_Unscope_Mappings

Zinit_Annex_Unscope_Mappings=(
    # zdharma/null
    "0.   null"				"zdharma/null 0"

    # z-a-as-monitor
    "1.   as-monitor"			"zinit-zsh/z-a-as-monitor 0"
    "2.   monitor"			"zinit-zsh/z-a-as-monitor 0"
                                         
    # z-a-patch-dl                     
    "3.   patch-dl"			"zinit-zsh/z-a-patch-dl 0"
                                         
    # z-a-rust                         
    "4.   rust"				"zinit-zsh/z-a-rust 0"
                                         
    # z-a-bin-gem-node                 
    "5.   bin-gem-node"			"zinit-zsh/z-a-bin-gem-node 0"
    "6.   bgn"				"zinit-zsh/z-a-bin-gem-node 0"
                                
    # zsh-syntax-highlighting  
    "7.  z-sy-h"		        "zdharma/zsh-syntax-highlighting 0"

    # fast-syntax-highlighting  
    "8.  f-sy-h"		        "zdharma/fast-syntax-highlighting 0"
    "9.  fsh"				"zdharma/fast-syntax-highlighting 0"

    # history-search-multi-word
    "10.  hsmw"				"zdharma/history-search-multi-word 0"

    # Prezto archive
    "11.  archive"			"PZTM::archive 1"
    "12.  arch"				"PZTM::archive 1"

    # Prezto directory
    "13.  directory"			"PZTM::directory 1"
    "14.  dir"				"PZTM::directory 1"

    # Prezto environment
    "15.  environment"			"PZTM::environment 1"
    "16.  env"				"PZTM::environment 1"

    # Prezto utility
    "17.  utility"			"PZTM::utility 1"
    "18.  util"				"PZTM::utility 1"

    # ZUI
    "19.  zui"				"zdharma/zui 0"
    "20.  ZUI"				"zdharma/zui 0"

    # Zconvey
    "19.  zconv"			"zdharma/zconvey 0"

    # Zbrowse
    "20.  zbrowse"			"zdharma/zbrowse 0"

    # zsh-autosuggestions
    "21.  autosuggestions"		"zsh-users/zsh-autosuggestions 0"
    "22.  autosug"			"zsh-users/zsh-autosuggestions 0"
)

# vim:ft=zsh:tw=80:sw=4:sts=4:noet
