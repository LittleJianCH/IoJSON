OperatorTable addAssignOperator(":", "assign")

JSON := Map clone do(
  curlyBrackets := method(
    _m := JSON clone 
    call message arguments foreach(arg,
      _m doMessage(arg)
    )
  )

  squareBrackets := method(
    call message arguments map(x, doMessage(x))
  )

  assign := method(key, value,
    atPut(
      // Because the first argument is treated as a name in Io, 
      // we need to remove the quotation mark
      key asMutable removePrefix("\"") removeSuffix("\""),
      value
    )
  )

  readFromString := method(str, 
    doString(str)
  )

  readFromFile := method(filename,
    readFromString(File with(filename) openForReading contents)
  )

  stringfy := method(
    "{ " .. self map(key, value, key .. ": " .. (value stringfy)) join(", ") asString .. " }"
  )
)

List stringfy := method(
  "[" .. map(x, x stringfy) join(", ") .. "]"
)

Sequence stringfy := method(
  "\"" .. self asString .. "\""
)

Object stringfy := method(
  call target asString
)