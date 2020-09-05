#!/bin/zsh

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
VSCODE_SETTING_DIR="~/Library/Application\ Support/Code/User"

# settings
rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.jsonc" "$VSCODE_SETTING_DIR/settings.json"

# keybindings
rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/keybindings.jsonc" "$VSCODE_SETTING_DIR/keybindings.json"

# extentions
cat extensions | while read line
do
 code --install-extension $line
done
