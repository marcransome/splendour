## Splendour
Syntactic sugar for Swift.

### Strings

Create an array of substrings by dividing a string by a separator string:

```swift
let input = "red,green,blue"
let components = input / ","		// => ["red", "green", "blue"]
```

Concatenate a single string multiple times using the `*` infix operator:

```swift
"hello" * 2		// => "hellohello"
```

### Integers

Find out if an integer is divisible by another with no remainder:

```swift
15.divisibleBy(3)		// => true
```
Check whether an integer is odd or even by accessing one of its `odd` or `even` properties:

```swift
3.odd		// => true
7.even		// => false
```

Generate a random integer between 0 and another integer value:

```swift
Int.random(100)				// => a random Int value between 0 and 100 inclusive
```

Or specify a range:

```swift
Int.random(10...20)			// => a random Int value between 10 and 20 inclusive
```

## License
`Splendour` is provided under the terms of the [MIT License](http://opensource.org/licenses/mit-license.php).

## Contact
Email me at [marc.ransome@fidgetbox.co.uk](mailto:marc.ransome@fidgetbox.co.uk) or tweet [@marcransome](http://www.twitter.com/marcransome).
