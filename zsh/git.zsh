function cgit-prune-merged() {
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}

function cgit-prune() {
  git branch | egrep -v "(^\*|master|dev)" | xargs git branch -D
}

function github-token-personal() {
  export GH_TOKEN=${github_mfklauberg}

  print-ok "🐙 $GH_TOKEN"
}