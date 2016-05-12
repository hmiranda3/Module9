//: Playground - noun: a place where people can play

import UIKit

let workingDictionary = ["nameKey": "Derek", "ageKey": 28, "favMovieKey": "Zoolander"]
let brokenDictionary = ["nameKey": "Steve", "ageKey": 2]

class Person {
    
    let nameKey = "nameKey"
    let ageKey = "ageKey"
    let favMovieKey = "favMovieKey"
    
    var name: String
    var age: Int
    var favMovie: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[nameKey] as? String, let age = dictionary[ageKey] as? Int, let favoriteMovie = dictionary[favMovieKey] as? String else {
            return nil
        }
        self.name = name
        self.age = age
        self.favMovie = favoriteMovie
    
    }
    
    var dictionaryRepresentation: [String: AnyObject] {
        let workingDictionary: [String: AnyObject] = ["nameKey": "Derek", "ageKey": 28, "favMovieKey": "Zoolander"]
        return workingDictionary
    }
    
}

let steve = Person(dictionary: brokenDictionary)
print(steve)

if let person = Person(dictionary: workingDictionary) {
    print(person.favMovie)
}





















































