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
    hook:preinit \
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
    "z-a-as-monitor"	        "zinit-zsh/z-a-as-monitor p"
    "as-monitor"	        "zinit-zsh/z-a-as-monitor p"
    "monitor"		        "zinit-zsh/z-a-as-monitor p"
                                
    # z-a-patch-dl              
    "z-a-patch-dl"	        "zinit-zsh/z-a-patch-dl p"
    "patch-dl"		        "zinit-zsh/z-a-patch-dl p"
                                
    # z-a-rust                  
    "z-a-rust"		        "zinit-zsh/z-a-rust p"
    "rust"		        "zinit-zsh/z-a-rust p"
                                
    # z-a-bin-gem-node          
    "z-a-bin-gem-node"	        "zinit-zsh/z-a-bin-gem-node p"
    "bin-gem-node"	        "zinit-zsh/z-a-bin-gem-node p"
    "bgn"		        "zinit-zsh/z-a-bin-gem-node p"
                                
    # fast-syntax-highlighting  
    "fast-syntax-highlighting"  "zdharma/fast-syntax-highlighting p"
    "f-sy-h"		        "zdharma/fast-syntax-highlighting p"
    "fsh"		        "zdharma/fast-syntax-highlighting p"

    # history-search-multi-word
    "history-search-multi-word" "zdharma/history-search-multi-word p"
    "hsmw"		        "zdharma/history-search-multi-word p"

    # Prezto environment
    "environment"		"PZTM::environment s"
    "env"			"PZTM::environment s"
)

# vim:ft=zsh:tw=80:sw=4:sts=4:noet
