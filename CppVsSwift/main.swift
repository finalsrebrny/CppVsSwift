//
//  main.swift
//  CppVsSwift
//
//  Created by Piotr Holub on 02.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

import Foundation
import QuartzCore

print("Hello, World!")

let cpp = HelloFromCPP()

cpp.hello(fromCPP: "Piotr")

let cpp2 = QuickSortCpp()

print()
print("Cpp quicksort vs Swift sort metod")







func makeList(_ n: Int) -> [Int] {
    return (0..<n).map{ _ in Int(arc4random_uniform(2000000) + 1) }
}


var list = makeList(1000000)
var start = CACurrentMediaTime()
list.sort()
var end = CACurrentMediaTime()
print("swift:\(end-start)")

var list2 = makeList(1000000)
var start2 = CACurrentMediaTime()
cpp2.quickSortCpp(list2)
var end2 = CACurrentMediaTime()
print("cpp :\(end2-start2)")

