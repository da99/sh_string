

* Print lines before or after a matching substring on a line:
  https://stackoverflow.com/questions/7103531/how-to-get-the-part-of-file-after-the-line-that-matches-grep-expression-first



* From: http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed
  `sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"`
