# zinit-annex-unscope

A Zinit-Zsh annex that allows to install plugins without specifying the GitHub
user name. It works as follows:

1. On the installation of a plugin without any slashes (/) in its name the
   annex will query the GitHub API searching for **\*/{the-name}**, sorting on
   stars.

2. It first requires at least 10 forks on the candidates, then 2, then 0.

3. After finding the best result it sets it as the **full** remote-id of the
   plugin, storing the ID on disk for later automatic use.

4. For security, for such GH-API request to be made a newly added (by this
   annex) ice: `ghapi` is required to be given.

5. Otherwise only the static database of mappings of short-plugin nicknames to
   the full scoped IDs will be searched. It contains many mappings, like, e.g.:
   **vi-reg** → **zsh-vi-more/evil-registers**, and also the usual basic
   unscopings of some of the popular plugins out there, like, e.g.:
   **zsh-syntax-highlighting** → **zsh-users/zsh-syntax-highlighting** and
   more.

## Usage Examples

1. An example installation via 2 nicknames (**env** and **vi-reg**) and by one
unscoped (i.e.: not using any GitHub username) ID that's being dynamically
resolved by a request to **GitHub API**:

![zinit-for-command](https://raw.githubusercontent.com/zdharma-continuum/z-a-unscope/master/images/unscope-zinit-for.png)

2. An example call to the **zinit scope …** subcommand that is added by this
annex. It allows to translate the unscoped IDs and the short-static
nicknames into the full **username/repository** plugin ID.

![scope-subcommand](https://raw.githubusercontent.com/zdharma-continuum/z-a-unscope/master/images/unscope-scope-cmd.png)

## Static Mappings

Besides the GitHub-API querying, there's also a fixed, curated list of mappings
of short names to the full GitHub IDs. The list currently consists of:

| Short (Nick-) Name        | GitHub ID / scoped ID                       |
|:-------------------------:|---------------------------------------------|
| null                      | zdharma-continuum/null                      |
| z-a-as-monitor            | zdharma-continuum/z-a-as-monitor            |
| as-monitor                | zdharma-continuum/z-a-as-monitor            |
| monitor                   | zdharma-continuum/z-a-as-monitor            |
| z-a-patch-dl              | zdharma-continuum/z-a-patch-dl              |
| patch-dl                  | zdharma-continuum/z-a-patch-dl              |
| z-a-submods               | zdharma-continuum/z-a-submods               |
| submods                   | zdharma-continuum/z-a-submods               |
| z-a-rust                  | zdharma-continuum/z-a-rust                  |
| rust                      | zdharma-continuum/z-a-rust                  |
| z-a-bin-gem-node          | zdharma-continuum/z-a-bin-gem-node          |
| bin-gem-node              | zdharma-continuum/z-a-bin-gem-node          |
| bgn                       | zdharma-continuum/z-a-bin-gem-node          |
| zinit-console             | zdharma-continuum/zinit-console             |
| console                   | zdharma-continuum/zinit-console             |
| consolette                | zdharma-continuum/zinit-console             |
| archive                   | PZTM::archive                               |
| arch                      | PZTM::archive                               |
| directory                 | PZTM::directory                             |
| dir                       | PZTM::directory                             |
| environment               | PZTM::environment                           |
| env                       | PZTM::environment                           |
| utility                   | PZTM::utility                               |
| util                      | PZTM::utility                               |
| fast-syntax-highlighting  | zdharma-continuum/fast-syntax-highlighting  |
| f-sy-h                    | zdharma-continuum/fast-syntax-highlighting  |
| fsh                       | zdharma-continuum/fast-syntax-highlighting  |
| history-search-multi-word | zdharma-continuum/history-search-multi-word |
| hsmw                      | zdharma-continuum/history-search-multi-word |
| zui                       | zdharma-continuum/zui                       |
| ZUI                       | zdharma-continuum/zui                       |
| zconvey                   | zdharma-continuum/zconvey                   |
| zconv                     | zdharma-continuum/zconvey                   |
| zbrowse                   | zdharma-continuum/zbrowse                   |
| zzcomplete                | zdharma-continuum/zzcomplete                |
| zzcomp                    | zdharma-continuum/zzcomplete                |
| zzcom                     | zdharma-continuum/zzcomplete                |
| zsh-autosuggestions       | zsh-users/zsh-autosuggestions               |
| autosuggestions           | zsh-users/zsh-autosuggestions               |
| autosug                   | zsh-users/zsh-autosuggestions               |
| asug                      | zsh-users/zsh-autosuggestions               |
| z-asug                    | zsh-users/zsh-autosuggestions               |
| zsh-syntax-highlighting   | zsh-users/zsh-syntax-highlighting           |
| z-sy-h                    | zsh-users/zsh-syntax-highlighting           |
| zsh-autocomplete          | marlonrichert/zsh-autocomplete              |
| autocomplete              | marlonrichert/zsh-autocomplete              |
| autocomp                  | marlonrichert/zsh-autocomplete              |
| aucom                     | marlonrichert/zsh-autocomplete              |
| acom                      | marlonrichert/zsh-autocomplete              |
| z-aucom                   | marlonrichert/zsh-autocomplete              |
| z-acom                    | marlonrichert/zsh-autocomplete              |
| zsh-autopair              | hlissner/zsh-autopair                       |
| autopair                  | hlissner/zsh-autopair                       |
| aupair                    | hlissner/zsh-autopair                       |
| aupa                      | hlissner/zsh-autopair                       |
| z-aupa                    | hlissner/zsh-autopair                       |
| evil-registers            | zsh-vi-more/evil-registers                  |
| evil-reg                  | zsh-vi-more/evil-registers                  |
| vi-reg                    | zsh-vi-more/evil-registers                  |
| vireg                     | zsh-vi-more/evil-registers                  |
| vi-motions                | zsh-vi-more/vi-motions                      |
| evil-mot                  | zsh-vi-more/vi-motions                      |
| vi-mot                    | zsh-vi-more/vi-motions                      |
| vimot                     | zsh-vi-more/vi-motions                      |
| vi-increment              | zsh-vi-more/vi-increment                    |
| evil-inc                  | zsh-vi-more/vi-increment                    |
| vi-inc                    | zsh-vi-more/vi-increment                    |
| viinc                     | zsh-vi-more/vi-increment                    |
| vi-quote                  | zsh-vi-more/vi-quote                        |
| evil-qte                  | zsh-vi-more/vi-quote                        |
| vi-qte                    | zsh-vi-more/vi-quote                        |
| viqte                     | zsh-vi-more/vi-quote                        |
| directory-marks           | zsh-vi-more/directory-marks                 |
| evil-dir-marks            | zsh-vi-more/directory-marks                 |
| vi-dir-marks              | zsh-vi-more/directory-marks                 |
| vi-dirma                  | zsh-vi-more/directory-marks                 |
| vidirma                   | zsh-vi-more/directory-marks                 |
| fd                        | sharkdp/fd                                  |
| shark-fd                  | sharkdp/fd                                  |
| bat                       | sharkdp/bat                                 |
| shark-bat                 | sharkdp/bat                                 |
| exa                       | ogham/exa                                   |
| zsh-completions           | zsh-users/zsh-completions                   |
| completions               | zsh-users/zsh-completions                   |
| comps                     | zsh-users/zsh-completions                   |

You can let me know if you would like a name to be added to the list.

## Installation

Simply load as a regular plugin, i.e.:

```zsh
zinit light-mode for zdharma-continuum/z-a-unscope
```

It should be done possibly early in the `zshrc`, as otherwise the preceding
`zinit` calls will not have the unscoped IDs resolved.

<!-- vim:set ft=markdown tw=79 autoindent fo+=a1n: -->
