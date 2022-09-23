//
//  main.swift
//  Swift SD
//
//  Created by Sylwester Tylec on 14/06/2022.
//

import Foundation
import Darwin
import CoreFoundation
let tablica: [Double]
tablica=[1,2,3,4,5,6,7,8,9,10]
var n=9
var g:Double
g=10
var i: Int
let p: Double
p=10

func calculateSD(arr: [Double])->Double{
    
    let start = CFAbsoluteTimeGetCurrent()
    var suma, mean, standardDeviation: Double
    standardDeviation=0
    mean=0
    suma=0
    for i in 0...n{
        suma+=arr[i]
    }
    mean=suma/g
    for i in 0...n{
        standardDeviation+=pow(arr[i]-mean, 2)
    }
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("Took \(diff) seconds")

    return sqrt(standardDeviation/g)
}
print(calculateSD(arr: tablica))
