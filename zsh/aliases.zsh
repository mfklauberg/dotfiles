alias weather-work='curl -4 http://wttr.in/Blumenau'
alias weather-home='curl -4 http://wttr.in/Pomerode'

alias edit-zsh='vi ~/.zshrc'
alias reload-zsh='source ~/.zshrc'

alias .='cd && clear'
alias please='sudo'

alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'

function hide-desktop-icons() {
  defaults write com.apple.finder CreateDesktop false
  killall Finder

  print-ok "🖥 hidden"
}

function show-desktop-icons() {
  defaults write com.apple.finder CreateDesktop true
  killall Finder

  print-ok "🖥 showing"
}
