
# === {{CMD}} 9 "very long string" -> "very long..."
summarize () {
  local +x TARGET="$1"; shift

  if [[ ! -z "$@" ]]; then
    echo "$@" | summarize $TARGET
    return $?
  fi

  while read TEXT; do
    local +x TEXT="$(echo "$TEXT" | tr '\t' ' ' | tr -s ' ')"
    local +x COUNT="$(echo "$TEXT" | wc -m)"

    if [[ "$COUNT" -le "$TARGET" ]] || ! echo $TEXT | grep -P '[[:space:]]' &>/dev/null; then
      echo "$TEXT"
      continue
    fi

    local +x SHORT="${TEXT:0:$(($TARGET + 1))}"
    local +x CHAR="${TEXT:$TARGET:$(($TARGET + 1))}"

    if [[ "$CHAR" == ' ' ]]; then
      echo -n ${SHORT}...
      continue
    fi

    echo -n $SHORT | rev | grep -Pzo '(?s)[[:space:]]+\K(.+)' | rev
    echo ...
  done
} # === end function
