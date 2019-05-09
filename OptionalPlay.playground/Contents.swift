import UIKit

var A : Int = 0
var X : Int? = 4

var sum = 0

if( X != nil )
{
    sum = A + X!
}

if let X2 = X
{
    sum = A + X2
}
else
{
    sum = A
}

print("\(sum)")

var AAA : Int = 1000
var BBB : Int?

let CCC = AAA + ( BBB ?? 6)

class Person
{
    var firstName : String
    var middleName : String
    var lastName : String
    
    func printOutMyName()
    {
        print("\(firstName) \(middleName ?? "") \(lastName ?? "")")
    }
    
    required init(fn : String, ln : String)
    {
        firstName = fn
        lastName = ln
    }
}

var MikeSmith = Person(fn: "Mike", ln: "Smith")
MikeSmith
