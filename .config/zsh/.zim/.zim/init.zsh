zimfw() { source /home/acasune/.config/zsh/.zim/.zim/zimfw.zsh "${@}" }
zmodule() { source /home/acasune/.config/zsh/.zim/.zim/zimfw.zsh "${@}" }
fpath=(/home/acasune/.config/zsh/.zim/.zim/modules/git/functions /home/acasune/.config/zsh/.zim/.zim/modules/utility/functions /home/acasune/.config/zsh/.zim/.zim/modules/duration-info/functions /home/acasune/.config/zsh/.zim/.zim/modules/git-info/functions /home/acasune/.config/zsh/.zim/.zim/modules/zsh-completions/src ${fpath})
autoload -Uz -- git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw duration-info-precmd duration-info-preexec coalesce git-action git-info
source /home/acasune/.config/zsh/.zim/.zim/modules/environment/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/git/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/input/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/termtitle/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/utility/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/duration-info/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/asciiship/asciiship.zsh-theme
source /home/acasune/.config/zsh/.zim/.zim/modules/completion/init.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/acasune/.config/zsh/.zim/.zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
