# IoJSON

This a json library for IoLanguage.

## Installation

First, you should clone the repository in your project directory.

``` bash
git submodule add https://github.com/LittleJianCH/IoJSON
```

Then you can use IoJSON in your project by `doFile`

``` io
doFile(the_path_to_json_io) 
// e.g. doFile("./IoJSON/json.io")
```

## Usage

There're two ways to use read a json file.

``` io
json1 := JSON clone readFromFile("./example.json")

json2 := JSON clone readFromString("{\"name\":\"littlejian\",\"age\":18, \"hobbies\":[\"code\",\"play\",\"drink\"]}")
```

As `JSON` is inherited from `Map`, you can use it like a `Map`.

``` io
json2 at("name") println

json2 at("hobbies") foreach(hobby, 
  hobby println
) 

json2 foreach(key, value, 
  key println
  value println
)
```

## Something more
If you want to know more about IoJSON, here's a blog about it: https://littlejianch.github.io/let-s-implment-a-json-lib-in-io-by-metaprogramming/