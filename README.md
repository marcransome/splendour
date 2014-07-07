## Splendour
Syntactic sugar for Swift:

1. [Strings](#Strings)
2. [Integers](#Integers)
    * [.divisibleBy(other: Int)](#IntegersDivisibleBy)
    * [.odd and .even](IntegersOddEven)
    * [Int.random(max: Int) -> Int](#IntegersRandom)
    * [Int.random(range: Range\<Int\>) -> Int](#IntegersRandomRange)
    * [Int.random(max: Int, count: Int) -> Int\[\]](#IntegersRandomCount)
    * [Int.random(range: Range<Int>, count: Int) -> Int\[\]](#IntegersRandomRangeCount)
    * [.to(max: Int, repeat: (index: Int) -> ())](#IntegersTo)
3. [Arrays](#Arrays)
    * [.each(repeat: (value: T) -> ())](#ArraysEach)
    * [.random(count: Int)](#ArraysRandom)

<a name="Strings"/>
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
<a name="Integers"/>
### Integers

<a name="IntegersDivisibleBy"/>
#### .divisibleBy(other: Int)

Find out if an integer is divisible by another with no remainder:

```swift
15.divisibleBy(3)       // => true

let choice = 4
choice.divisibleBy(3)   // => false
```

<a name="IntegersOddEven"/>
#### .odd and .even

Check whether an integer is odd or even by accessing one of its `odd` or `even` properties:

```swift
3.odd             // => true
7.even            // => false

let diceRoll = 5
diceRoll.odd      // => true
```

<a name="IntegersRandom"/>
#### Int.random(max: Int) -> Int

Generate a random integer between zero and the specified maximum:

```swift
Int.random(100)			// => 47
```

<a name="IntegersRandomRange">
#### Int.random(range: Range\<Int\>) -> Int

Generate a random integer within a specified range:

```swift
Int.random(10...20)		// => 14
```

<a name="IntegersRandomCount"/>
#### Int.random(max: Int, count: Int) -> Int\[\]

Create an array of random integers with values between zero and the specified maximum:

```swift
Int.random(10, count: 4)          // => [5, 2, 6, 1]
```

<a name="IntegersRandomRangeCount"/>
#### Int.random(range: Range<Int>, count: Int) -> Int\[\]

Create an array of random integers with values in the given range:

```swift
Int.random(50...100, count: 3)    // => [72, 89, 4]
```

<a name="IntegersTo"/>
#### .to(max: Int, repeat: (index: Int) -> ())

Repeats a block of code for each integer value between the receiver and the specified maximum:

```swift
1.to(3, repeat: { number in
    println(number)
})
```

Prints:

```
1
2
3
```

Simplify things by using a trailing closure and shorthand argument syntax:

```swift
1.to(3) { println($0) }
```

You can even count in reverse:

```swift
3.to(1) { println($0) }
```

Prints:

```
3
2
1
```
<a name="Arrays"/>
### Arrays

<a name="ArraysEach"/>
#### .each(repeat: (value: T) -> ())

Perform an operation for each value in an array by providing an inline closure to the `each` method:

```swift
let numbers = [1, 2, 3]

numbers.each({ value in
    println(value)
})
```

Which outputs:

```
1
2
3
```

Or simplify things even further using a trailing closure and shorthand argument syntax:

```swift
let numbers = [1, 2, 3]
numbers.each { println($0) }
```
<a name="ArraysRandom"/>
#### .random(count: Int)

Select random elements from an array using the `random` method:

```swift
let numbers = [1, 2, 3, 4, 5, 6]

let randomChoice = numbers.random(4)    // => [3, 5, 3, 1]
```

Caveat: random array elements aren't uniqued, meaning you may receive duplicate values (as shown above). This also means you can request a number of random elements that exceeds the total number of elements in the array.

## Contributing
Send a pull request with your changes, including a brief description, and they will be considered for inclusion in Splendour.

## License
`Splendour` is provided under the terms of the [MIT License](http://opensource.org/licenses/mit-license.php).

## Contact
Email me at [marc.ransome@fidgetbox.co.uk](mailto:marc.ransome@fidgetbox.co.uk) or tweet [@marcransome](http://www.twitter.com/marcransome).
