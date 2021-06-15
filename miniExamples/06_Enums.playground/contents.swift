// Basic enum
enum Weekdays {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    
}

var today: Weekdays
today  = .thursday

if (today == Weekdays.monday){
    print("it is Monday")
}

//today.rawValue

switch today{
case .monday, .wednesday, .friday:
    print("Swim Practice")
case .thursday:
    print("Horse back riding")
    
default:
    print("Piano practice")
}

// Rawvalues -----------------------------------------------------------------------------

enum State: Int {
    case ready;
    case set;
    case go;
}

var raceState = State.ready
raceState.rawValue
var nextRaceState = State(rawValue: 0)
if nextRaceState?.rawValue == 0 {
    print("ready")
}



// Associated values and functions ---------------------------------------------------------------

enum HomeworkStatus {
    case noHomework
    case inProgress(Int, Int)
    case done
    
    func simpleDescription() -> String {
        switch self {
        case .noHomework:
            return "No Homework"
        case .inProgress(let workDone, let totalProblems):
            return "You have finished \(workDone) out of \(totalProblems)"
        case .done:
            return "Done"
        }
    }
}

var myHwStatus = HomeworkStatus.inProgress(8, 10)

myHwStatus.simpleDescription()

