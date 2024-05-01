function cgit-prune-merged() {
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}

function cgit-prune() {
  git branch | egrep -v "(^\*|master|dev)" | xargs git branch -D
}

function github-token-personal() {
  local QUIET=$1

  export GH_TOKEN=${github_mfklauberg}
  export GITHUB_TOKEN=${github_mfklauberg}

  if [ "$QUIET" != "quiet" ]; then
    print-ok "🐙 $GH_TOKEN"
  fi
}
