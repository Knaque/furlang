import strutils

const break_chars = ['(', ')', ',']

proc flip(b: var bool) = b = if b == false: true else: false

proc tokenize*(line: string): seq[string] =
  var
    buffer: string
    is_str = false
    is_brk = false # "break"
  for c in line:
    if c notin break_chars or is_str == true:
      if c == '"' and is_brk == false: is_str.flip()
      elif c == '\\' and is_brk == false: is_brk.flip()
      elif c != ' ' or is_str == true: buffer.add(c); is_brk = false
    else:
      result.add(buffer.strip()); buffer = ""