//: Playground - noun: a place where people can play

protocol Climber {
    
    var shoe: String { get set }
    var chalkBag: String {get set}
    var amountOfChalk: Int {get set}
    var weightOfGear: Int {get set}

    
    func climb()

}

extension Climber {
    func climb() {
        print("started climbing the wall")
    }
}

protocol UsesRopes {
    var rope: String {get set}
    var harness: String {get set}
    
    func tieIn(with rope: String, harness:String)
}

extension UsesRopes {
    func tieIn(with rope: String, harness:String) {
        print("tied a figure 8 knot with \(rope) rope into \(harness) harness")
    }
}

struct Boulderer: Climber {
    var shoe: String
    var chalkBag: String
    var amountOfChalk: Int
    var weightOfGear: Int
}

struct SportClimber: Climber, UsesRopes {
    var shoe: String
    var rope: String
    var harness: String
    var weightOfGear: Int
    var chalkBag: String
    var amountOfChalk: Int
}

struct FreeSoloist: Climber {
    var shoe: String
    var chalkBag: String
    var amountOfChalk: Int
    var weightOfGear: Int
}