import UIKit

/*
 Palindrome Algorithm.
 This Algorithm is to check and return the number of palindromes in a sentence.
 What is Palidrome? - https://en.wikipedia.org/wiki/Palindrome
 Resources: https://www.youtube.com/watch?v=94fx_aw1zt4
 */

let sentence = "madam anna kayak notapalindrome anna Civic racecar"


// Implement a function that will tell me for each palidrome, how many times it occurs. For example
// ["Civi": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]



func allPalindromeCounts(sentence: String) -> [String: Int] {
    var counts = [String: Int]()
    
    let words = sentence.components(separatedBy: " ")
    words.forEach { (word) in
        if isPalindrome(word: word) {
            let count = counts[word] ?? 0
            counts[word] = count + 1
        }
    }
    
    return counts
}


func isPalindrome(word: String) -> Bool {
    let characters = Array(word.lowercased())
    var currentIndex = 0
    
    while currentIndex < characters.count / 2 {
        if characters[currentIndex] != characters[characters.count - currentIndex - 1] {
            return false
        }
        
        currentIndex += 1
    }
    
    return true
}


let counts = allPalindromeCounts(sentence: sentence)
print("Counts:", counts)
