//
//  SortReport.swift
//  CppVsSwift
//
//  Created by Piotr Holub on 03.08.2018.
//  Copyright © 2018 Piotr Holub. All rights reserved.
//

import Foundation
import QuartzCore

class SortReport {
    
    init(){
        createReport()
    }
    func createReport(){
        var startValue = 1000
        
        
        for _ in 0...1 {
        
        var timeSwift=0.0
        var timeCpp=0.0
        for _ in 1...10 {
            let listSwift = makeList(startValue)
            timeSwift += swiftSort(array: listSwift)
            
            let listCpp = makeList(startValue)
            timeCpp += cppSort(array: listCpp)
        }
        timeSwift=timeSwift/10
        timeCpp=timeCpp/10
        print("Swift size:\(startValue) time:\(timeSwift)")
        print("Cpp size:\(startValue) time:\(timeCpp)")
        
            startValue*=10
        }
        
    }
    
    func swiftSort(array:[Int])->Double{
        var newArray = array
        let start = CACurrentMediaTime()
        newArray.sort()
        let end = CACurrentMediaTime()
        return end-start
    }
    func cppSort(array:[Int])->Double{
        let start = CACurrentMediaTime()
        let cppAlgorithm = AlgorithmApi()
        
        cppAlgorithm.sortIntegers(array)
        let end = CACurrentMediaTime()
        return end-start
        
    }
    private func makeList(_ n: Int) -> [Int] {
        return (0..<n).map{ _ in Int(arc4random_uniform(2000000) + 1) }
    }
    
    
}
