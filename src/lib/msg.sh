#!/bin/bash
# // ⚠️ 🤘 😎 😭 🚸 🇦🇷 ✔️ ✖️ 🔔 ❌ 😬 😅 🥹 👀 🤦‍♂️ 💭

error() {
  echo "😭 $1" "$(red_bold $2)"
  exit 1
}

log() {
  echo "$(green_bold ✔️) $1"
}
