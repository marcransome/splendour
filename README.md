## Splendour
Syntactic sugar for Swift.

### Strings

Divide a string into an array of substrings using a separator:

```swift
let input = "red,green,blue"
let components = input / ","		// => ["red", "green", "blue"]
```

Concatenate a single string multiple times using the `*` infix operator:

```swift
"hello" * 2		// => "hellohello"
```

### Integers

Find out if an integer literal or variable is divisible by another with no remainder:

```swift
15.divisibleBy(3)       // => true

let choice = 4
choice.divisibleBy(3)   // => false
```
Check whether an integer is odd or even by accessing one of its `odd` or `even` properties:

```swift
3.odd             // => true
7.even            // => false

let diceRoll = 5
diceRoll.odd      // => true
```

Generate a random integer between 0 and 100 inclusive:

```swift
Int.random(100)			// => 47
```

Or specify a range:

```swift
Int.random(10...20)		// => 14
```

Need more than one random value? Specify a `count` argument:

```swift
Int.random(10, count: 4)          // => [5, 2, 6, 1]
Int.random(50...100, count: 2)    // => [72, 89]
```
### Arrays

Perform an operation for each value in an array using inline closure syntax:

```swift
let numbers = [1, 2, 3]
numbers.each(value in
  println(value)
})
```

Then simplify things even further using a trailing closure and shorthand argument syntax:

```swift
let numbers = [1, 2, 3]
numbers.each { println($0) }
```


## License
`Splendour` is provided under the terms of the [MIT License](http://opensource.org/licenses/mit-license.php).

## Contact
Email me at [marc.ransome@fidgetbox.co.uk](mailto:marc.ransome@fidgetbox.co.uk) or tweet [@marcransome](http://www.twitter.com/marcransome).
