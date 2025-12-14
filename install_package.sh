%%bash
# Verifying package installation
install_package() {
  for i in "$@"; do
    if ! pip show "$i" > /dev/null 2>> errors.log; then
      pip install "$i" > /dev/null 2>> errors.log
      echo "$i installed"
    else
      echo "$i already installed"
    fi
  done
}

#install_package ffmpeg opencv-python
#output:
#ffmpeg already installed
#opencv-python already installed