#!/bin/bash
# shellcheck disable=SC2154
flavour=${args[flavour]}
name=null
url=null

case ${flavour} in
Sonoma)
  name="Sonoma 14"
  url="macappstores://apps.apple.com/app/macos-sonoma/id6450717509?mt=12"
  ;;
Ventura)
  name="Ventura 13"
  url="macappstores://apps.apple.com/app/macos-ventura/id1638787999?mt=12"
  ;;
Monterey)
  name="Monterey 12"
  url="macappstores://apps.apple.com/app/macos-monterey/id1576738294?mt=12"
  ;;
BigSur)
  name="Big Sur 11"
  url="macappstores://apps.apple.com/app/macos-big-sur/id1526878132?mt=12"
  ;;
Catalina)
  name="Catalina 10.15"
  url="macappstores://apps.apple.com/app/macos-catalina/id1466841314?mt=12"
  ;;
Mojave)
  name="Mojave 10.14"
  url="macappstores://apps.apple.com/app/macos-mojave/id1398502828?mt=12"
  ;;
HighSierra)
  name="High Sierra 10.13"
  url="macappstores://apps.apple.com/app/macos-high-sierra/id1246284741?mt=12"
  ;;
Sierra)
  name="Sierra 10.12"
  url="http://updates-http.cdn-apple.com/2019/cert/061-39476-20191023-48f365f4-0015-4c41-9f44-39d3d2aca067/InstallOS.dmg"
  ;;
ElCapitan)
  name="El Capitan 10.11"
  url="http://updates-http.cdn-apple.com/2019/cert/061-41424-20191024-218af9ec-cf50-4516-9011-228c78eda3d2/InstallMacOSX.dmg"
  ;;
Yosemite)
  name="Yosemite 10.10"
  url="http://updates-http.cdn-apple.com/2019/cert/061-41343-20191023-02465f92-3ab5-4c92-bfe2-b725447a070d/InstallMacOSX.dmg"
  ;;
MountainLion)
  name="Mountain Lion 10.8"
  url="https://support.apple.com/en-us/102662#:~:text=Yosemite%2010.10-,Mountain%20Lion%2010.8,-Lion%2010.7"
  ;;
Lion)
  name="Lion 10.7"
  url="https://updates.cdn-apple.com/2021/macos/041-7683-20210614-E610947E-C7CE-46EB-8860-D26D71F0D3EA/InstallMacOSX.dmg"
  ;;
*)
  error "Unknown MacOS version" "${flavour}"
  ;;
esac

# Open AppStore
open -u "${url}"

# Print selected flavour
log "${name} selected"
