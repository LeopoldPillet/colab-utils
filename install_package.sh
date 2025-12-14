#!/usr/bin/env bash

# Verifying package installation
install_package() {
  for i in "$@"; do
    if ! python -m pip show "$i" > /dev/null 2>> errors.log; then
      python -m pip install "$i" > /dev/null 2>> errors.log
      echo "$i installed"
    else
      echo "$i already installed"
    fi
  done
}