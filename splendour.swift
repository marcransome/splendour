/* The MIT License (MIT)
 *
 * Copyright (c) 2014 Marc Ransome
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Darwin
import Foundation

extension Int {
    static func random(range: Range<Int>) -> Int {
        return Int(arc4random_uniform(UInt32(range.endIndex - range.startIndex))) + range.startIndex
    }

    static func random(max: Int) -> Int {
        return Int.random(0...max)
    }
    
    func upto(max: Int, repeat closure: (index: Int) -> ()) {
        for i in self...max {
            closure(index: i)
        }
    }
    
    func divisibleBy(other: Int) -> Bool {
        return (self % other == 0)
    }
    
    var even: Bool {
        return self % 2 == 0
    }
    
    var odd: Bool {
        return self % 2 != 0
    }
}

@infix func * (left: Int, right: String) -> String {
    var concatenation = ""
    for _ in 0..left {
        concatenation += right
    }
    return concatenation
}

@infix func * (left: String, right: Int) -> String {
    var concatenation = ""
    for _ in 0..right {
        concatenation += left
    }
    return concatenation
}

@infix func / (left: String, right: String) -> String[] {
    return left.componentsSeparatedByString(right)
}
