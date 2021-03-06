alias l="ll -a"
alias hg="history | grep"
alias gps="git add . --all && git commit -m . && git push"
alias gap="git add . --all && git commit --allow-empty --amend --no-edit && git push -f"
alias grf="git fetch -f && git reset --hard \$(git rev-parse --abbrev-ref --symbolic-full-name @{u})"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gl="git log --oneline"
alias glg="git log --oneline --graph"
alias gla="git log --oneline --graph --all"
alias gs="git status"
alias gd="git diff"
