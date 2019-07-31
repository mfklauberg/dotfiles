export GH_TOKEN=${github_mfklauberg}

function cgit-clear() {
  git reset HEAD --hard
  git clean -fd
  git pull
}

function cgit-prune() {
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}

function cgit-fuck-it() {
  git push --force
}

function github-token-work() {
  export GH_TOKEN=${github_jenkins}
}

function github-token-personal() {
  export GH_TOKEN=${github_mfklauberg}
}