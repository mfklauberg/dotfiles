
function open-pr() {
  LABELS=$1
  REVIEWERS=$2

  # --browse   , open the PR in the browser.
  # --copy     , copy the PR URL to the clipboard.
  # --labels   , Add a list of comma-separated labels to the PR.
  # --no-edit  , Use the data from the first commit for the PR creation.
  # --reviewer , Add a list of comma-separated users as reviewers the PR.
  hub pull-request --copy --browse --no-edit --labels=$LABELS --reviewer=$REVIEWERS
}

function cpick() {
  PREFIX=$1; shift
  VERSIONS=$(echo $1 | tr "," "\n"); shift
  HASHES=$(echo $1 | tr "," "\n"); shift

  {
    while read -r VERSION; do
      GIT_BRANCH="$PREFIX${VERSION}"

      git branch -D $GIT_BRANCH
      git checkout $GIT_BRANCH
      git clean -fd

      {
        while read -r HASH; do
          git cherry-pick $HASH

          if [ $? -eq 0 ]
            then
              tok "Success cherry-picking $HASH to $GIT_BRANCH"
            else
              terror "Error while trying to cherry-pick $HASH to $GIT_BRANCH"
          fi

        done
      } <<< $HASHES
    done

  } <<< $VERSIONS
}
