# #!/usr/bin/env zsh

USERLAND_CONFIG_DIRECTORY=./userland-config

for FILE_NAME in $(find $USERLAND_CONFIG_DIRECTORY -maxdepth 1 -type f -exec basename {} \;); do
  echo "Symlinking: $FILE_NAME"

  SOURCE_PATH="${HOME}/dotfiles/${USERLAND_CONFIG_DIRECTORY}/${FILE_NAME}"
  TARGET_PATH="${HOME}/${FILE_NAME}"

  $(ln -sf "$SOURCE_PATH" "$TARGET_PATH")
done
