//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Car {
    
    private let makeKey = "make"
    private let modelKey = "model"
    private let yearKey =  "year"
    
    let make: String
    let model: String
    let year: Int
    
    var fullDescription: String {
        return "\(year) \(make) \(model)"
    }
    
    var dictionaryRepresentation: [String: AnyObject] {
    
        let carDictionary: [String: AnyObject] = [makeKey: self.make, modelKey: self.model, yearKey: self.year]
        
        return carDictionary
    
    }
    
      init(make: String, model: String, year: Int) {
        
        self.make = make
        self.model = model
        self.year = year
        
    }
    
    init?(dictionary: [String: AnyObject]) {
        
        guard let make = dictionary[makeKey] as? String,
        let model = dictionary[modelKey] as? String,
            let year = dictionary[yearKey] as? Int else {
                
                self.make = ""
                self.model = ""
                self.year = 1999
                
                return nil
        }
        self.make = make
        self.model = model
        self.year = year
    }
}

//Class to Dictionary

let myCar = Car(make: "Chevy", model: "Silverado", year: 2005)

print(myCar.fullDescription)

myCar.dictionaryRepresentation

// Dictionary to class

let dreamCarDictionary = ["makeKey": "Toyota", "modelKey": "Prius", "yearKey": 2019]
let dreamCar = Car(dictionary: dreamCarDictionary)

//Loop Car
let lameCar = Car(make: "Ford", model: "Explorer", year: 1999)
let lameCarDictionary = lameCar.dictionaryRepresentation
let secondLameCar = Car(dictionary: lameCarDictionary)


/* NSUserDefaults - Plist










