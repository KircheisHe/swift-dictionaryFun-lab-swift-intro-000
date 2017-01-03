//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = ["Joe": "Peanut Butter and Chocolate",
                                     "Tim": "Natural Vanilla",
                                     "Sophie": "Mexican Chocolate",
                                     "Deniz": "Natural Vanilla",
                                     "Tom": "Mexican Chocolate",
                                     "Jim": "Natural Vanilla",
                                     "Susan": "Cookies 'N' Cream"]
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var ret : [String] = []
        for (name, hisflavor) in favoriteFlavorsOfIceCream {
            if (hisflavor == flavor) {
                ret.append(name)
            }
        }
        
        return ret
    }
    
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var ret : Int = 0
        for (_, hisflavor) in favoriteFlavorsOfIceCream {
            if (hisflavor == flavor) {
                ret += 1
            }
        }
        
        return ret
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        else {
            return false
        }
    }
    
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true;
        }
        else {
            return false;
        }
    }
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        if let _ = favoriteFlavorsOfIceCream[person] {
            return false;
        }
        
        favoriteFlavorsOfIceCream[person] = flavor
        return true
    }

    
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var ret : String = ""
        
        for name in allNames {
            if (ret.isEmpty == false) {
                ret.append("\n")
            }
            ret.append("\(name) likes \(favoriteFlavorsOfIceCream[name]!)")
        }
        
        return ret;
    }
    
    
    
    
    
    

}
