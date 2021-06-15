// We already know about constants vs variables but there is another choice always present.
var x = 7
var f: Float = 7
let dave = "Dave"
//dave = "Bob"  // Would cause an error

// Part 1.
// Optionals
var optionalFloat: Float?
var requiredFloat: Float
var implicitlyUnwrappedOptionalFloat: Float!

optionalFloat = 5.0
requiredFloat = 5.0

print("optionalFload = \(optionalFloat)")
print("optionalFload = \(requiredFloat)")







// Optionals with forced unwrapping


print("optionalFload = \(optionalFloat!)")

let name = "Theo"
let number = "7"
var optionalThatIsNil: Int? = Int(name)
var optionalThatIsNotNil: Int? = Int(number)
var requiredThatIsNotNil: Int = Int(number)!


optionalThatIsNil
optionalThatIsNotNil





// Part 2.
import UIKit
// Views in a Playground + Optional Chaining
let b = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
b.backgroundColor = UIColor.red
//b.setTitle("Press me", for: UIControl.State.normal)
//b.setTitle("Press me", for: .normal)

print(b.titleLabel)
print(b.titleLabel?.text) // optional chaining
print(b.titleLabel!.text) // force unwraping

print(b.titleLabel!.text!)

// Optional Binding

if let myText = b.titleLabel?.text{
    print("there is text and the value is \(myText)")
    
}else {
    print("There is no text on label")
}







// Implicitly Unwrapped Optionals


var myImplicitlyUnwrappedOptionalLabel: UILabel! = b.titleLabel

print(myImplicitlyUnwrappedOptionalLabel.text)
print(myImplicitlyUnwrappedOptionalLabel.text!)

