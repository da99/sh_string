
# === {{CMD}}  "string"
Capitalize () {
  # === $ Capitalize wOrD => Word
  # Based on: http://stackoverflow.com/a/12487465/841803
  word="$1"
  first="$(tr '[:lower:]' '[:upper:]' <<< ${word:0:1})"
  rest="$(tr  '[:upper:]' '[:lower:]' <<< ${word:1})"
  echo "$first$rest"
} # === end function
