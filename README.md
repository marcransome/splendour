<img src="https://www.fidgetbox.co.uk/github/wand.png" alt="Magic wand" width="120">

## Splendour
Syntactic sugar for Swift:

1. [Strings](#Strings)
2. [Integers](#Integers)
    * [.divisibleBy(other: Int)](#IntegersDivisibleBy)
    * [.odd and .even](#IntegersOddEven)
    * [Int.random(max: Int) -> Int](#IntegersRandom)
    * [Int.random(range: Range\<Int\>) -> Int](#IntegersRandomRange)
    * [Int.random(max: Int, count: Int) -> \[Int\]](#IntegersRandomCount)
    * [Int.random(range: Range\<Int\>, count: Int) -> \[Int\]](#IntegersRandomRangeCount)
    * [Int.series(range: Range\<Int\>) -> \[Int\]](#IntegersSeries)
    * [.to(max: Int, repeat: (index: Int) -> ())](#IntegersTo)
3. [Arrays](#Arrays)
    * [.each(repeat: (value: T) -> ())](#ArraysEach)
    * [.random(count: Int)](#ArraysRandom)
    * [.random(count: Int, unique: Bool) -> \[T\]](#ArraysRandomUnique)

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

#### Int.random(max: Int, count: Int) -> \[Int\]

Create an array of random integers with values between zero and the specified maximum:

```swift
Int.random(10, count: 4)          // => [5, 2, 6, 1]
```

<a name="IntegersRandomRangeCount"/>

#### Int.random(range: Range\<Int\>, count: Int) -> \[Int\]

Create an array of random integers with values in the given range:

```swift
Int.random(50...100, count: 3)    // => [72, 89, 53]
```

<a name="IntegersSeries"/>

#### Int.series(range: Range\<Int\>) -> \[Int\]

Returns an array of integers for the given range.

```swift
Int.series(0...5)      // => [0, 1, 2, 3, 4, 5]
```

<a name="IntegersTo"/>

#### .to(max: Int, repeat: (index: Int) -> ())

Repeat a block of code for each integer value between the receiver and the specified maximum:

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

Repeat a block of code for each value in an array:

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

<a name="ArraysRandomUnique"/>

#### .random(count: Int, unique: Bool) -> \[T\]

Unlike the `.random(count: Int)` method which returns an array of random elements that may contain duplicate values, this method allows you specify whether elements should be unique or not.

When requesting unique elements, the returned array will be no greater in size than the total number of elements of the receiver. When specifying non-unique elements the functionality will be identical to that of the `.random(count: Int)` method:

```swift
["north", "east", "south", "west"].random(2, unique: true)     // => ["east", "north"]
["north", "east", "south", "west"].random(5, unique: true)     // => ["west", "north", "east", "south"]

["north", "east", "south", "west"].random(3, unique: false)    // => ["south", "north", "south"]
["north", "east", "south", "west"].random(5, unique: false)    // => ["west", "north", "east", "north", "west"]
```

## Contributing
Send a pull request with your changes, including a brief description, and they will be considered for inclusion in Splendour.

## License
`Splendour` is provided under the terms of the [MIT License](http://opensource.org/licenses/mit-license.php).

## Acknowledgements
[Magic Wand](http://thenounproject.com/term/magic-wand/78861/) icon by [SuperAtic LABS](http://thenounproject.com/SuperAtic/) from The Noun Project.

## Contact
Email me at [marc.ransome@fidgetbox.co.uk](mailto:marc.ransome@fidgetbox.co.uk) or [create an issue](https://github.com/marcransome/splendour/issues).
