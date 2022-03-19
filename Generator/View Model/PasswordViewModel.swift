//
//  PasswordViewModel.swift
//  Pa55word Generator
//
//  Created by Richard Clegg on 17/03/2022.
//

import Foundation

class PasswordGeneratorViewModel: ObservableObject {
    
    @Published var password = "Create A New Password"
    
    // MARK: CHARACTER SETS

    let upperAndLowerCase = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                            "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    let lettersAndNumbers = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                                "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
                                "0","1","2","3","4","5","6","7","8","9"]
    
    let lettersAndSpecials = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                              "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
                              "!","\"","$","%","&","/","(",")","=","?","+","*","#",",",";",".",":","-","_","@","<",">", "^","[","]",
                              "{","}"]
    let LettersAndNumbersAndSpecials = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                                        "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
                                        "!","\"","$","%","&","/","(",")","=","?","+","*","#",",",";",".",":","-","_","@","<",">", "^","[","]",
                                        "{","}","0","1","2","3","4","5","6","7","8","9"]
    
    // MARK: INDIVIDUAL CHARACTERS
    
    let lowerCharacters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let upperCharacters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    let numbers = ["0","1","2","3","4","5","6","7","8","9"]
    let specialCharacters = ["!","\"","§","$","%","&","/","(",")","=","?","+","*","#",",",";",".",":","-","_","@","<",">","^","[","]","{","}","'","`","´"]
    
    // MARK: CREATE PASSWORD FUNCTIONS
    
    func createLettersPassword(of length: Int) {
        
        password = ""
        
        for _ in 1...length {
            password.append(upperAndLowerCase.randomElement()!)
        }
        var passwordArray = password.map { String($0) }
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.append(upperCharacters.randomElement()!)
        passwordArray.append(lowerCharacters.randomElement()!)
        passwordArray.shuffle()
        password = passwordArray.joined()
    }
    
    func createLettersAndNumbers(of length: Int) {
        password = ""
        
        for _ in 1...length {
            password.append(lettersAndNumbers.randomElement()!)
        }
        
        var passwordArray = password.map { String($0) }
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.append(lowerCharacters.randomElement()!)
        passwordArray.append(upperCharacters.randomElement()!)
        passwordArray.append(numbers.randomElement()!)
        passwordArray.shuffle()
        password = passwordArray.joined()
        
    }
    
    func createLettersAndSpecials(of length: Int) {
        password = ""
        
        for _ in 1...length {
            password.append(lettersAndSpecials.randomElement()!)
        }
        
        var passwordArray = password.map { String($0) }
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.append(lowerCharacters.randomElement()!)
        passwordArray.append(upperCharacters.randomElement()!)
        passwordArray.append(specialCharacters.randomElement()!)
        passwordArray.shuffle()
        password = passwordArray.joined()
    }
    
    func createAll(of length: Int) {
        password = ""
        
        for _ in 1...length {
            password.append(LettersAndNumbersAndSpecials.randomElement()!)
        }
        
        var passwordArray = password.map { String($0) }
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.remove(at: 0)
        passwordArray.append(lowerCharacters.randomElement()!)
        passwordArray.append(upperCharacters.randomElement()!)
        passwordArray.append(numbers.randomElement()!)
        passwordArray.append(specialCharacters.randomElement()!)
        passwordArray.shuffle()
        password = passwordArray.joined()
    }
    
    func createUUID() {
        password = UUID().uuidString
    }
}
