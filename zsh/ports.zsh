function port-find() {
  PORT=$1

  lsof -nP -i4TCP:$PORT | grep LISTEN
}

function port-kill() {
  PORT=$1

  kill -9 $(port-find $PORT | awk '{print $2}')
}
