
* Remove leading/ending whitespace. Truncate whitespace:
  https://stackoverflow.com/questions/369758/how-to-trim-whitespace-from-a-bash-variable

* Print lines before or after a matching substring on a line:
  https://stackoverflow.com/questions/7103531/how-to-get-the-part-of-file-after-the-line-that-matches-grep-expression-first

* Finding patterns across lines:
  https://stackoverflow.com/questions/2686147/how-to-find-patterns-across-multiple-lines-using-grep

* Removing color codes:
  From: http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed
  `sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"`
