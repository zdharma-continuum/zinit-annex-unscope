# z-a-unscope

A Zinit-Zsh annex that allows to install plugins without specifying the user
name. It works as follows:
- for a plugin name without any slashes (`/`) in it it'll query the GitHub API
  searching for `*/{the-name}`, sorting on stars,
- it first requires at least 10 forks on the candidates, then 2, then 0,
- after finding a result it sets it as the remote-id of the plugin, storing the
  ID on disk.

Besides the GitHub-API querying, there's also a fixed, curated list of mappings
of short names to the full GitHub IDs. The list curently consists of:

| Short (Nick-) Name | GitHub ID |
|:-------------:|----------------------------------------|
|as-monitor	|	zinit-zsh/z-a-as-monitor         |
|monitor	|	zinit-zsh/z-a-as-monitor         |
|patch-dl	|	zinit-zsh/z-a-patch-dl           |
|rust		|	zinit-zsh/z-a-rust               |
|bin-gem-node	|	zinit-zsh/z-a-bin-gem-node       |
|bgn		|	zinit-zsh/z-a-bin-gem-node       |
|autosuggestions|       zsh-users/zsh-autosuggestions    |
|autosug        |       zsh-users/zsh-autosuggestions    |
|z-sy-h 	|       zsh-users/zsh-syntax-highlighting|
|f-sy-h         |       zdharma/fast-syntax-highlighting |
|fsh		|	zdharma/fast-syntax-highlighting |
|hsmw		|	zdharma/history-search-multi-word|
|archive	|	PZTM::archive                    |
|arch		|	PZTM::archive                    |
|directory	|	PZTM::directory                  |
|dir		|	PZTM::directory                  |
|environment	|	PZTM::environment                |
|env		|	PZTM::environment                |
|utility	|	PZTM::utility                    |
|util		|	PZTM::utility                    |
|zui		|	zdharma/zui                      |
|ZUI		|	zdharma/zui                      |
|zconv	|       zdharma/zconvey         |
|zbrowse	|	zdharma/zbrowse                  |
                                                           
<!-- vim:set ft=markdown tw=79 autoindent fo+=a1n: -->     
                                                           
                                                           
                                                           
                                                           
                                                           
