function print-colored-message() {
  local color=$1
  local message=$2
  local none=$(no-color)

  printf "\n${color}$message${none}\n\n"
}

function print-ok() {
  print-colored-message $(green-color) "$1"
}

function print-error() {
  print-colored-message $(red-color) "$1"
}
