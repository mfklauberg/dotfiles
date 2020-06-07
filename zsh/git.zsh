function cgit-prune() {
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}

function github-token-personal() {
  export GH_TOKEN=${github_mfklauberg}

  print-ok "🐙 $GH_TOKEN"
}