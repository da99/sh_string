
# === {{CMD}} number
# === cmd something | {{CMD}}

bytes-to-human () {
  if [[ ! -z "$@" ]]; then
    echo "$@"  | bytes-to-human
    return 0
  fi

  while read NUM ; do
    if [[ "$NUM" -lt 1024 ]]; then
      echo $NUM b/s
      continue
    fi

    if [[ "$NUM" -lt $((1024*1024)) ]]; then
      echo $(echo "scale=0; $NUM/1024" | bc) Kb/s
      continue
    fi

    echo $(echo "scale=2; $NUM/1024/1024" | bc) Mb/s
  done

} # === end function
