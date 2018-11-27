/*
 Palindrome Algorithm.
 This Algorithm is to check and return the number of palindromes in a sentence.
 What is Palidrome? - https://en.wikipedia.org/wiki/Palindrome
 */

// Task
// Implement a function that will tell me for each palidrome, how many times it occurs. For example
// ["Civi": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]


let sentence = "madam anna kayak notapalindrome anna Civic racecar Civic"

function allPalindromeCounts(sentence) {
    var counts = {}

    let words = sentence.split(" ")
    words.forEach(word => {
        if (isPalindrome(word)) {
            let count = counts[word]
            if (isNaN(count)) {
                count = 0
            }
            counts[word] = count + 1
        }
    });

    return counts
}

function isPalindrome(word) {
    let characters = word.toLowerCase();
    var currentIndex = 0

    while (currentIndex < characters.length / 2) {
        if (characters[currentIndex] != characters[characters.length - currentIndex - 1]) {
            return false
        }

        currentIndex++
    }

    return true
}

let counts = allPalindromeCounts(sentence)
console.log(counts)
