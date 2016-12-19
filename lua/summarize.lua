

-- Tests:
--   a very long string of 123 456 789 and other chars chars chars chars
--

function main(STR_ORIGIN, I_LEN)

  local POS = string.find(STR_ORIGIN, '%s', I_LEN)
  local FINAL = string.sub(STR_ORIGIN, 0, I_LEN - 1)

  if FINAL == STR_ORIGIN then
    print(FINAL)
  else
    print(FINAL  .. '...')
  end

end -- main()

function assert_cmd_arg_type(ARR, POS, STR_TYPE)
  local ACTUAL

  if STR_TYPE == 'number' then
    ACTUAL = type(tonumber(ARR[POS]))
  else
    ACTUAL  = type(ARR[POS])
  end

  if ACTUAL ~= STR_TYPE then
    assert(false, 'Arg #' .. POS .. ' must be a ' .. STR_TYPE .. ', not a ' .. tostring(ACTUAL) .. '(' .. tostring(ARR[POS])  .. ')')
  end

  return true
end -- assert_type

assert_cmd_arg_type(arg, 1, 'string')
assert_cmd_arg_type(arg, 2, 'number')

main(arg[1], arg[2])

