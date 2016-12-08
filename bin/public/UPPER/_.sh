
# === {{CMD}}  "string"
UPPER () {
  # === $ lower wOrD => WORD
  word="$1"
  echo "$(tr  '[:lower:]' '[:upper:]' <<< ${word})"
} # === end function
