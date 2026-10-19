#!/data/data/com.termux/files/usr/bin/bash
# Backward-compatibility wrapper for legacy 'st' command
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/aegis" "$@"
