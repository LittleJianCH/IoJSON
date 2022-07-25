doFile("../json.io")

json1 := JSON clone readFromFile("./example.json")

json2 := JSON clone readFromString("{\"name\":\"littlejian\",\"age\":18, \"hobbies\":[\"code\",\"play\",\"drink\"]}")

json2 at("name") println

"----------------" println

json2 at("hobbies") foreach(hobby, 
  hobby println
) 

"----------------" println

json2 foreach(key, value, 
  key print
  ": " print
  value println
)

"----------------" println

json1 at("Sally Johnson") at("age") println

"----------------" println

json1 atPut("string", "Hi IoJSON")

json1 stringfy println