# Welcome to fizz buzz.


#### Usage:


```
require './lib/fizz_buzz'

fizz_buzz = FizzBuzz.new
fizz_buzz.display([1,3,5,15]) =>
"1"
"Fizz"
"Buzz"
"FizzBuzz"

fizz_buzz.display(1..5) =>
"1"
"2"
"Fizz"
"4"
"Buzz"
```

#### Advanced Usage:

FizzBuzz allows you to register your own output (defaulting to STDOUT)
FizzBuzz.new(output: MyOutPutClass)

The output must implement a 'puts' method.

Example:
```
File.open('myTestFile', 'w+') do |file|
  fizz_buzz = FizzBuzz.new(output: file)
  fizz_buzz.display(1..1000)
end
```
