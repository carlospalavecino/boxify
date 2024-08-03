#!/bin/bash

DEBUG=true

flavour=${args[flavour]}
saveTo=${args[--path]}
installer=NULL

case ${flavour} in
Sonoma)
  installer='Install macOS Sonoma.app'
  ;;
Ventura)
  installer='Install macOS Ventura.app'
  ;;
Monterey)
  installer='Install macOS Monterey.app'
  ;;
BigSur)
  installer='Install macOS Big Sur.app'
  ;;
Catalina)
  installer='Install macOS Catalina.app'
  ;;
Mojave)
  installer='Install macOS Mojave.app'
  ;;
HighSierra)
  installer='Install macOS High Sierra.app'
  ;;
Sierra)
  installer='Install macOS Sierra.app'
  ;;
ElCapitan)
  installer='Install macOS El Capitan.app'
  ;;
Yosemite)
  installer='Install macOS Yosemite.app'
  ;;
MountainLion)
  installer='Install macOS Mountain Lion.app'
  ;;
Lion)
  installer='Install macOS Lion.app'
  ;;
*)
  error "Unknown MacOS flavour" "${flavour}"
  ;;
esac

echo "================================================"

# Delete image if exists
if [[ -f "/tmp/${flavour}.dmg" ]]; then
  rm "/tmp/${flavour}.dmg"
  log "/tmp/${flavour}.dmg deleted"
fi

# Create image
log "Creating /tmp/${flavour}.dmg"
hdiutil create -o "/tmp"/"${flavour}" -size 16000m -layout SPUD -fs HFS+J

# Mount image
log "Mounting ${flavour}.dmg"
hdiutil attach /tmp/"${flavour}".dmg -noverify -mountpoint /Volumes/install_build

# Install
log "Copying ${installer}"
sudo /Applications/"${installer}"/Contents/Resources/createinstallmedia --volume /Volumes/install_build --nointeraction

# Unmount
log "unmounting Install macOS ${flavour}"
hdiutil detach "/Volumes/Install macOS ${flavour}"

# Converto to iso
log "Converting ${flavour}.dmg"
hdiutil convert /tmp/"${flavour}".dmg -format UDTO -o /tmp/"${flavour}"

# Create path if doesn't exist
if [[ ! -d ${saveTo} ]]; then
  log "Creating ${saveTo} "
  mkdir -p "${saveTo}"
fi

# Move final iso to the desktop
log "Saving ${flavour}.iso to ${saveTo}"
mv "/tmp/${flavour}.cdr" "${saveTo}/${flavour}.iso"

# # Remove tmp image
if [[ -f "/tmp/${flavour}.dmg" ]]; then
  log "Deleting /tmp/${flavour}.dmg"
  rm "/tmp/${flavour}.dmg"
fi
