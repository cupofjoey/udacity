//: First Class 

import UIKit

// assign to var or a constant

let f = {(x:Int) -> Int
    in
    return x + 42}

// We can call this closure just like any other integer in a func

f(9)
f(76)
// closures in an array (or a dictionary, or a set, etc...)
let closures = [f,
                {(x:Int) -> Int in return x * 2},
                {x in return x - 8},
                {(x:Int) in x*x},
                {$0 * 42}]

for fn in closures{
    fn(42)
}

//: functions and closures: same old, same old

func foo(x:Int) -> Int {
    return 42 + x
}

let bar = {(x: Int) -> Int
    in
    42 + x
}

// the two examples above do the same thing

// create a few functions, add them to an array and call them

func curly(n:Int) -> Int {
    return n * n
}

func larry(z:Int) -> Int {
    return z * (z + 1)
}

func moe(m:Int) -> Int {
    return m * (m - 1) * (m - 2)
}

var stooges = [curly, larry, moe]










