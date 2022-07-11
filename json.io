OperatorTable addAssignOperator(":", "assign")

JSON := Map clone do(
  curlyBrackets := method(
    call message arguments foreach(arg,
      doMessage(arg)
    )
  )

  squareBrackets := method(
    _l := List clone
    call message arguments foreach(arg,
      _l append(doMessage(arg))
    )
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
)