#!/bin/bash

# This sets up the myman alias dynamically
SCRIPT_PATH="$(realpath "$0")"
ALIAS_LINE="alias myman=\"bash $SCRIPT_PATH\""

# This adds the  alias to ~/.bashrc if not already made
if ! grep -Fxq "$ALIAS_LINE" ~/.bashrc; then
  echo "$ALIAS_LINE" >> ~/.bashrc
  echo "Alias [myman] added to ~/.bashrc"
  echo "Run 'source ~/.bashrc' or open a new terminal to use it."

  # This attempts to activate the myman alias
  if [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc && echo "Activated alias!"
  fi
fi

# Commands
case "$1" in
  cat)
    echo -e "\`cat\`: Shows the content inside a file.\nExample:\n  cat myfile.txt"
    ;;
  ls)
    echo -e "\`ls\`: Lists all files and folders where you are.\nExample:\n  ls -l"
    ;;
  cd)
    echo -e "\`cd\`: Changes the folder you are working in.\nExample:\n  cd Documents"
    ;;
  mkdir)
    echo -e "\`mkdir\`: Creates a new folder.\nExample:\n  mkdir newfolder"
    ;;
  rm)
    echo -e "\`rm\`: Deletes a file.\nExample:\n  rm file.txt"
    ;;
  rmdir)
    echo -e "\`rmdir\`: Deletes an empty folder.\nExample:\n  rmdir oldfolder"
    ;;
  touch)
    echo -e "\`touch\`: Creates a new empty file.\nExample:\n  touch file.txt"
    ;;
  echo)
    echo -e "\`echo\`: Prints text on the screen or writes it to a file.\nExample:\n  echo hello"
    ;;
  pwd)
    echo -e "\`pwd\`: Shows the current folder path you are in.\nExample:\n  pwd"
    ;;
  whoami)
    echo -e "\`whoami\`: Shows the name of the user you are logged in as.\nExample:\n  whoami"
    ;;
  clear)
    echo -e "\`clear\`: Clears everything on the terminal screen.\nExample:\n  clear"
    ;;
  cp)
    echo -e "\`cp\`: Copies a file or folder to a new place.\nExample:\n  cp file1.txt file2.txt"
    ;;
  mv)
    echo -e "\`mv\`: Moves or renames a file or folder.\nExample:\n  mv file.txt folder/"
    ;;
  history)
    echo -e "\`history\`: Shows a list of commands you typed before.\nExample:\n  history"
    ;;
  man)
    echo -e "\`man\`: Shows detailed help for a command.\nExample:\n  man ls"
    ;;
  "")
    echo "It seems like you didn't type a command."
    ;;
  *)
    echo "Sorry! There is no information for: '$1'."
    ;;
esac