# change network location based on wifi name
# depends on symbolic link to airport
# ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport

function network-switch-location() {
  NETWORK_LOCATION=$1

  networksetup -switchtolocation $NETWORK_LOCATION &> /dev/null && print-ok "Network location switched to $NETWORK_LOCATION."
}

function network-switch-work() {
  WORK_WIFI="PHBNURDS"
  NETWORK_LOCATION="Automatic"

  if airport -s | grep -q $WORK_WIFI; then
    NETWORK_LOCATION="Philips"
  fi

  network-switch-location $NETWORK_LOCATION

  print-ok "🛩  ${NETWORK_LOCATION}"
}

function network-switch-reset() {
  NETWORK_LOCATION="Automatic"

  network-switch-location $NETWORK_LOCATION

  print-ok "🛩  ${NETWORK_LOCATION}"
}
