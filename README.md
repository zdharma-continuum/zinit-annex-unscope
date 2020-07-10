# z-a-unscope

A Zinit-Zsh annex that allows to install plugins without specifying the user
name. It works as follows:
- on the installation of a plugin without any slashes (`/`) in its name it'll
query the GitHub API searching for **\*/{the-name}**, sorting on stars,
- it first requires at least 10 forks on the candidates, then 2, then 0,
- after finding a result it sets it as the remote-id of the plugin, storing the
ID on disk for later automatic use.

## Usage Examples

1. An example installation via 2 nicknames (**env** and **vi-reg**) and by one
unscoped (i.e.: not using any GitHub username) ID that's being dynamically
resolved by a request to **GitHub API**:

![zinit-for-command](https://raw.githubusercontent.com/zinit-zsh/z-a-unscope/master/images/unscope-zinit-for.png)

2. An example call to the **zinit scope …** subcommand that is added by this
annex. It allows to translate the unscoped IDs and the short-static
nicknames into the full **username/repository** plugin ID.

![scope-subcommand](https://raw.githubusercontent.com/zinit-zsh/z-a-unscope/master/images/unscope-scope-cmd.png)

## Static Mappings

Besides the GitHub-API querying, there's also a fixed, curated list of mappings
of short names to the full GitHub IDs. The list currently consists of:

| Short (Nick-) Name | GitHub ID
|:-------------:|---------------------------------------------------|
|null		|	zdharma/null                                |
|as-monitor	|	zinit-zsh/z-a-as-monitor                    |
|monitor	|	zinit-zsh/z-a-as-monitor                    |
|patch-dl	|	zinit-zsh/z-a-patch-dl                      |
|rust		|	zinit-zsh/z-a-rust                          |
|bin-gem-node	|	zinit-zsh/z-a-bin-gem-node                  |
|bgn		|	zinit-zsh/z-a-bin-gem-node                  |
|console	|	zinit-zsh/zinit-console                     |
|consolette	|	zinit-zsh/zinit-console                     |
|archive	|	PZTM::archive 1                             |
|arch		|	PZTM::archive 1                             |
|directory	|	PZTM::directory 1                           |
|dir		|	PZTM::directory 1                           |
|environment	|	PZTM::environment 1                         |
|env		|	PZTM::environment 1                         |
|utility	|	PZTM::utility 1                             |
|util		|	PZTM::utility 1                             |
|f-sy-h		|        zdharma/fast-syntax-highlighting            |
|fsh		|	zdharma/fast-syntax-highlighting            |
|hsmw		|	zdharma/history-search-multi-word           |
|zui		|	zdharma/zui                                 |
|ZUI		|	zdharma/zui                                 |
|zconv		|	zdharma/zconvey                             |
|zbrowse	|	zdharma/zbrowse                             |
|zzcomp		|	zdharma/zzcomplete                          |
|zzcom		|	zdharma/zzcomplete                          |
|autosuggestions|	zsh-users/zsh-autosuggestions               |
|autosug	|	zsh-users/zsh-autosuggestions               |
|asug		|	zsh-users/zsh-autosuggestions               |
|z-asug		|	zsh-users/zsh-autosuggestions               |
|z-sy-h		|        zsh-users/zsh-syntax-highlighting           |
|autocomplete	|	marlonrichert/zsh-autocomplete              |
|autocomp	|	marlonrichert/zsh-autocomplete              |
|aucom		|	marlonrichert/zsh-autocomplete              |
|acom		|	marlonrichert/zsh-autocomplete              |
|z-aucom	|	marlonrichert/zsh-autocomplete              |
|z-acom		|	marlonrichert/zsh-autocomplete              |
|autopair	|	hlissner/zsh-autopair                       |
|aupair		|	hlissner/zsh-autopair                       |
|aupa		|	hlissner/zsh-autopair                       |
|z-aupa		|	hlissner/zsh-autopair                       |
|evil-reg	|	zsh-vi-more/evil-registers                  |
|vi-reg		|	zsh-vi-more/evil-registers                  |
|vireg		|	zsh-vi-more/evil-registers                  |
|evil-mot	|	zsh-vi-more/vi-motions                      |
|vi-mot		|	zsh-vi-more/vi-motions                      |
|vimot		|	zsh-vi-more/vi-motions                      |
|evil-inc	|	zsh-vi-more/vi-increment                    |
|vi-inc		|	zsh-vi-more/vi-increment                    |
|viinc		|	zsh-vi-more/vi-increment                    |
|evil-qte	|	zsh-vi-more/vi-quote                        |
|vi-qte		|	zsh-vi-more/vi-quote                        |
|viqte		|	zsh-vi-more/vi-quote                        |
|evil-dir-marks	|	zsh-vi-more/directory-marks                 |
|vi-dir-marks	|	zsh-vi-more/directory-marks                 |
|vi-dirma	|	zsh-vi-more/directory-marks                 |
|vidirma	|	zsh-vi-more/directory-marks                 |

You can let me know if you would like a name to be added to the list.

<!-- vim:set ft=markdown tw=79 autoindent fo+=a1n: -->
