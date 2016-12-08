
# === {{CMD}} "   string   string   "
# === cat path/to/file | {{CMD}}
trim () {
  sed 's/^#[[:space:]]\+\|[[:space:]]\+$// ' "$@"
} # === end function
