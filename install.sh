#!/bin/bash

set -e

BIN_DIR="$HOME/.local/bin"
TARGET="$BIN_DIR/archbtw"
REPO_URL="https://github.com/DevNathan/I-use-Arch-btw/releases/download/archbtw/archbtw"

mkdir -p "$BIN_DIR"

echo "⬇ Downloading archbtw..."
curl -fsSL "$REPO_URL/archbtw" -o "$TARGET"
chmod +x "$TARGET"

echo "Installed to $TARGET"

if [[ ":$PATH:" != *":$BIN_DIR:"* ]]; then
  echo "Warning: $BIN_DIR is not in your PATH."
  echo "➡ Add this line to your shell config (e.g. ~/.zshrc or ~/.bashrc):"
  echo "   export PATH=\"\$HOME/.local/bin:\$PATH\""
else
  echo "You can now run: archbtw"
fi
