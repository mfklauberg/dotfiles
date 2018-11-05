# change network location based on available wifi network.
function wifiloc() {
  WORK_WIFI="PHBNURDS"

  NETWORK_LOCATION="Automatic"

  if airport -s | grep -q $WORK_WIFI; then
    NETWORK_LOCATION="Philips"
  fi

  networksetup -switchtolocation $NETWORK_LOCATION &> /dev/null && tok "Network location switched to $NETWORK_LOCATION."
}