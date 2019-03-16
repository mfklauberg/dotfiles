# change network location based on wifi
# depends on symbolic link to
# ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport

## change network location
function wifiloc() {
  WORK_WIFI="PHBNURDS"
  NETWORK_LOCATION="Automatic"

  if airport -s | grep -q $WORK_WIFI; then
    NETWORK_LOCATION="Philips"
  fi

  networksetup -switchtolocation $NETWORK_LOCATION &> /dev/null && tok "Network location switched to $NETWORK_LOCATION."
}

function wifires() {
  NETWORK_LOCATION="Automatic"

  networksetup -switchtolocation $NETWORK_LOCATION &> /dev/null && tok "Network location switched to $NETWORK_LOCATION."
}

function cport() {
  lsof -nP -i4TCP:$1 | grep LISTEN
}

function kport() {
  cport() $1 | awk '{print $1}'
}