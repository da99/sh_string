
# === {{CMD}}  "name"
Model_Name () {
  # === $ Model_Name app_name => App_Name
  # Based on: http://stackoverflow.com/questions/779847/sed-change-case-of-substitution-group
  echo "$@" | sed -e 's/_\([a-z]\)/_\U\1/g' -e 's/^\([a-z]\)/\U\1/g'
} # === end function
