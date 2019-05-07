function proxy-switch-work() {
  export {http,https}_proxy=${proxy_work_final}
  export {HTTP,HTTPS}_PROXY=${proxy_work_final}

  reload-zsh
}

function proxy-switch-reset() {
  unset {http,https}_proxy
  unset {HTTP,HTTPS}_PROXY

  reload-zsh
}