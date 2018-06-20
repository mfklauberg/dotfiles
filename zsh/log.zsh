function tlog() {
  SWITCH="\033["
  NORMAL="${SWITCH}0m"

  COLOR=${SWITCH}${1}
  MESSAGE=$2

  printf "${COLOR}$MESSAGE${NORMAL}\n"
}

function twarn() {
  YELLOW="1;33m"

  tlog $YELLOW $1
}

function terror() {
  RED="1;31m"

  tlog $RED $1
}

function tok() {
  GREEN="1;32m"

  tlog $GREEN $1
}

function tdebug() {
  GREY="0;37m"

  tlog $GREY $1
}