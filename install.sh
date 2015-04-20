#! /bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"

action="${1:-install}"

case "$action" in
  install)
    apm install && apm link
    ;;

  uninstall)
    apm unlink
    ;;

  *)
    echo "Usage: $0 [install|uninstall]" >&2
    ;;
esac
