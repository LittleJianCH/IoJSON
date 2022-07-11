"Welcome to IoJSON!" println

// Here is a example

doFile("./json.io")

json := JSON clone readFromFile("./example.json")

json at("Bob Smith") println

json at("Sally Johnson") at("email") println

json at("number") println

json at("list") println

json at("unknow") println