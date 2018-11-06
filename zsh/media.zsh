# mark current playing track as "loved".
function iloved() {
  osascript -e '
    tell application "iTunes"
      set loved of current track to true
    end tell
  '
}


# add current playing track to a "loved" playlist, since
# iTunes smart playlist does not work as expected.
function iadd() {
  osascript -e '
    tell application "iTunes"
      duplicate current track to playlist "loved"
    end tell
    return
  '

  trackName=$(osascript -e '
    tell application "iTunes"
      name of current track
    end tell
  ')

  artistName=$(osascript -e '
    tell application "iTunes"
      artist of current track
    end tell
  ')

  tok "Track $trackName by $artistName added to playlist!"
}