function cgit-clear() {
  git reset HEAD --hard
  git clean -fd
  git pull
}

function cgit-prune() {
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}
