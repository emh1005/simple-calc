//
//  main.swift
//  SimpleCalc
//
//  Created by studentuser on 10/5/16.
//  Copyright © 2016 emh. All rights reserved.
//

import Foundation

/*let elements = [1,2,3,4,5]
if elements.contains(5) {
    print("yes")
}*/

print ("For simple calculator type s; to count the number of input type c; to average all the inputs type a; to calculate factorial type f")
let re = readLine(strippingNewline: true)
if re == "s" {
    print("Enter an expression seperated by returns")
    let response = readLine(strippingNewline: true)
    let operation = readLine(strippingNewline: true)
    let response1 = readLine(strippingNewline: true)
    let num1 = Int(response!)
    let num2 = Int(response1!)
    var right = true
    var result = 0
    if num1 != nil && num2 != nil {
        if operation == "+" {
            result = num1! + num2!
        } else if operation == "-" {
            result = num1! - num2!
        } else if operation == "*" {
            result = num1! * num2!
        }  else if operation == "/" {
            result = num1! / num2!
        }  else if operation == "%" {
            result = num1! % num2!
        } else {
            right = false
        }
        if right {
            print("Result: \(result)")
        } else {
            print("Wrong operation!")
        }
    } else {
        print ("Please type numbers!")
    }

} else if re == "c" {
    print ("Enter numbers then 'count' at the end of input")
    let re1 = readLine(strippingNewline: true)
    var reArr = re1!.components(separatedBy: " ")
    var count = 0
    if reArr.contains("count") {
        while reArr[count] != "count" {
            count += 1
        }
        print ("=> \(count)")
    } else {
        print ("Please type 'count'!")
    }
} else if re == "a" {
    print ("Enter numbers then 'avg' at the end of input")
    let re2 = readLine(strippingNewline: true)
    var reArr2 = re2!.components(separatedBy: " ")
    var index = 0
    var avg = 0
    var testNum = true
    if reArr2.contains("avg") {
        while reArr2[index] != "avg" {
            let temp = Int(reArr2[index])
            if temp != nil {
                avg += temp!
            } else {
                testNum = false
            }
            index += 1
        }
        if testNum {
            print ("=> \(avg / index)")
        } else {
            print ("Please type numbers!")
        }
    } else {
        print ("Please type 'avg'!")
    }
} else if re == "f" {
    print ("Enter numbers then 'fact' at the end of input")
    let re3 = readLine(strippingNewline: true)
    var reArr3 = re3!.components(separatedBy: " ")
    if reArr3.count <= 1 || reArr3[1] != ("fact"){
        print ("Factorial only accepts one number!")
    } else {
        let num = Int(reArr3[0])
        var fact = 1
        if num != nil {
            for i in 1...num! {
                fact *= i
            }
            print ("=> \(fact)")
        } else {
            print ("Please type numbers!")
        }
    }
} else {
    print ("No such function!")
}
/*func simpleCalc() {
print("Enter an expression seperated by returns")
let response = readLine(strippingNewline: true)
let operation = readLine(strippingNewline: true)
let response1 = readLine(strippingNewline: true)
let num1 = Int(response!)
let num2 = Int(response1!)
var right = true
var result = 0
if num1 != nil && num2 != nil {
    if operation == "+" {
        result = num1! + num2!
    } else if operation == "-" {
        result = num1! - num2!
    } else if operation == "*" {
        result = num1! * num2!
    }  else if operation == "/" {
        result = num1! / num2!
    }  else if operation == "%" {
        result = num1! % num2!
    } else {
        right = false
    }
    if right {
        print("Result: \(result)")
    } else {
        print("Wrong operation!")
    }
} else {
    print ("Please type numbers!")
}
}*/

//good
/*func count() {
let re1 = readLine(strippingNewline: true)
var reArr = re1!.components(separatedBy: " ")
var count = 0
if reArr.contains("count") {
    while reArr[count] != "count" {
        count += 1
    }
    print ("=> \(count)")
} else {
    print ("Please type count!")
}
}*/
//good
/*
func avg() {
let re2 = readLine(strippingNewline: true)
var reArr2 = re2!.components(separatedBy: " ")
var index = 0
var avg = 0
var testNum = true
if reArr2.contains("avg") {
    while reArr2[index] != "avg" {
        let temp = Int(reArr2[index])
        if temp != nil {
            avg += temp!
        } else {
            testNum = false
        }
        index += 1
    }
    if testNum {
        print ("=> \(avg / index)")
    } else {
        print ("Please type numbers!")
    }
} else {
    print ("Please type avg!")
}
}*/
//good
/*func fact() {
let re3 = readLine(strippingNewline: true)
var reArr3 = re3!.components(separatedBy: " ")
if reArr3.count <= 1 || reArr3[1] != ("fact"){
    print ("Factorial only accepts one number!")
} else {
    let num = Int(reArr3[0])
    var fact = 1
    if num != nil {
        for i in 1...num! {
            fact *= i
        }
        print ("=> \(fact)")
    } else {
        print ("Please type numbers!")
    }
}
}*/
/*let stringNumber = readLine(strippingNewline: true)
var numberFromString = Int(stringNumber!)
numberFromString! += 1
print (numberFromString!)*/



