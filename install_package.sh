#!/usr/bin/env bash

# Verifying package installation
install_package() {
  for i in "$@"; do
    if ! python -m pip show "$i" > /dev/null 2>> errors.log; then
      if ! python -m pip install "$i" > /dev/null 2>>errors.log; then
        echo "$i not found"
      else
        echo "$i installed"
      fi
    else
      echo "$i already installed"
    fi
  done
}