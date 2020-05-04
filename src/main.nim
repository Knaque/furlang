# the Furlang interpreter
# by Knaque
# liscensed under the CC0 1.0 Universal license


# stdlib
import os, strutils, tables
# files
import tokenizer

# some procs
proc add(a: openArray[string]): int =
  for n in a:
    result += n.parseInt()

# Load code from file, print help message if not specified
let program = open(
  if paramCount() > 0: paramStr(1)
  else: echo """Furlang - the programming language for furry trash.
  Usage:
    furlang <filename>
   ____            ____  
  / __ \          / __ \ 
 | |  | |_      _| |  | |
 | |  | \ \ /\ / / |  | |
 | |__| |\ V  V /| |__| |
  \____/  \_/\_/  \____/ """; quit 0
)


# Table for storing variables
var vars = initTable[string, string]()

# iter through each line in the program
for line in program.lines():
  let cmd = tokenize(line)
  case cmd[0]
  of "awoo": echo cmd[1..cmd.len-1].join()
  of "hug": echo add(cmd[1..cmd.len-1])

program.close()