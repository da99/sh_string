
# === {{CMD}} number
# === cmd something | {{CMD}}

bytes-to-human () {
  local +x ONE_MB=1048576 # 1024 * 1024

  if [[ ! -z "$@" ]]; then
    echo "$@"  | bytes-to-human
    return 0
  fi

  while read NUM ; do
    if [[ "$NUM" -lt 1024 ]]; then
      echo $NUM b/s
      continue
    fi

    if [[ "$NUM" -lt $ONE_MB  ]]; then
      # echo $(echo "scale=0; $NUM/1024" | bc) Kb/s
      echo $(( $NUM/1024 )) Kb/s
      continue
    fi

    # echo $(echo "scale=2; $NUM/1024/1024" | bc) Mb/s
    local +x MAIN=$(( NUM / ONE_MB ))
    local +x REM=$(( NUM % ONE_MB ))
    if [[ $REM -gt 10 ]] ; then
      printf "%.2f" "$MAIN.$REM"
    else
      printf "$MAIN"
    fi
    echo " Mb/s"
  done

} # === end function
