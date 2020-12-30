import UIKit

class Boss {
    
    var minion: RulesDelegate?
    
    func makeTask() -> () {
        print("I'll do main task")
    }

    func additionalTask(){
        if let minion = minion{
            minion.cleanroom()
            minion.meditation()
            minion.cookDish()
        }else{
            print("I'll do nothing!")
        }
    }
}


protocol RulesDelegate{
    func cleanroom()
    func meditation()
    func cookDish()
}



class MinionA : RulesDelegate {
    func cleanroom(){
        print("I'll clean frontdoor")
    }
    func meditation(){
        print("ok...")
    }
    func cookDish(){
        print("I'll make breakfast")
    }
}

class MinionB : RulesDelegate {
    func cleanroom(){
        print("I'll clean kitchen")
    }
    func meditation(){
        print("Yes, sir!")
    }
    func cookDish(){
        print("I'll make lunch")
    }
}

let yanmer = Boss()
let minionA = MinionA()
let minionB = MinionB()

yanmer.minion = minionA
yanmer.makeTask()
yanmer.additionalTask()
