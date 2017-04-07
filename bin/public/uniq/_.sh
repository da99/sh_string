
# === {{CMD}}  file
# === my cmd | {{CMD}}
uniq () {
  awk '!seen[$0]++' "$@"
} # === end function
