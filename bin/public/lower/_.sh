
# === {{CMD}}  "string"
lower () {
  # === $ lower wOrD => word
  word="$1"
  echo "$(tr  '[:upper:]' '[:lower:]' <<< ${word})"
} # === end function
