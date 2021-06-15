var myVariable = 42
myVariable = 50
let myConstant = 42
//myConstant = 59

let scores = [75, 53, 93, 87, 42, 84]
var totalPassing = 0;
for score in scores {
    if(score >= 60){
        totalPassing += 1
    }
}
totalPassing
print(totalPassing)

print("\(totalPassing) passed out of \(scores.count)")
