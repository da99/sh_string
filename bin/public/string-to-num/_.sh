
# === {{CMD}}  "string"
string-to-num () {
  str=$1
  shift
  sum=0
  pos=0

  # === $ bash_setup  string_to_num   word  -> num
  while read -n1 char; do
    code="$(printf '%d\n' "'$char")"
    sum=$((sum + pos + code))
    pos=$((pos + 1))
  done < <(echo -n "$str")
  echo $sum
} # === end function
