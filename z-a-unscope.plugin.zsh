# -*- mode: sh; sh-indentation: 4; sh-basic-offset: 4; -*-

# Copyright (c) 2020 Sebastian Gniazdowski
# License MIT

# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html

0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz ∧za-unscope-preinit-handler

# An empty stub to fill the help handler fields
∧za-unscope-help-null-handler() { :; }

@zinit-register-annex "z-a-unscope" \
    hook:before-load-5 \
    ∧za-unscope-preinit-handler \
    ∧za-unscope-help-null-handler \
    "" # No ices

# The hash that holds mappings of the unscoped plugin names to the
# scoped ones, and also the nick-names that map to the same, however
# are different in that they're not just stripped GitHub user name
# (i.e.: unscoped), but in general free names.

typeset -gA ZINIT_ANNEX_UNSCOPE_MAPPINGS

ZINIT_ANNEX_UNSCOPE_MAPPINGS=(
    # z-a-as-monitor
    "1.   z-a-as-monitor"		"zinit-zsh/z-a-as-monitor 0"
    "2.   as-monitor"			"zinit-zsh/z-a-as-monitor 0"
    "3.   monitor"			"zinit-zsh/z-a-as-monitor 0"
                                         
    # z-a-patch-dl                     
    "4.   z-a-patch-dl"			"zinit-zsh/z-a-patch-dl 0"
    "5.   patch-dl"			"zinit-zsh/z-a-patch-dl 0"
                                         
    # z-a-rust                         
    "6.   z-a-rust"			"zinit-zsh/z-a-rust 0"
    "7.   rust"				"zinit-zsh/z-a-rust 0"
                                         
    # z-a-bin-gem-node                 
    "8.   z-a-bin-gem-node"		"zinit-zsh/z-a-bin-gem-node 0"
    "9.   bin-gem-node"			"zinit-zsh/z-a-bin-gem-node 0"
    "10.  bgn"				"zinit-zsh/z-a-bin-gem-node 0"
                                
    # fast-syntax-highlighting  
    "11.  fast-syntax-highlighting"	"zdharma/fast-syntax-highlighting 0"
    "12.  f-sy-h"		        "zdharma/fast-syntax-highlighting 0"
    "13.  fsh"				"zdharma/fast-syntax-highlighting 0"

    # history-search-multi-word
    "14.  history-search-multi-word"	"zdharma/history-search-multi-word 0"
    "15.  hsmw"				"zdharma/history-search-multi-word 0"

    # Prezto environment
    "15.  environment"			"PZTM::environment 1"
    "16.  env"				"PZTM::environment 1"
)

# vim:ft=zsh:tw=80:sw=4:sts=4:noet
