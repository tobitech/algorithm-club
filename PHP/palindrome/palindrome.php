<?php

/*Palindrome Algorithm.
//This Algorithm is to check and return the number of palindromes in a sentence.
//What is Palidrome? - https://en.wikipedia.org/wiki/Palindrome


//Task
//Implement a function that will tell me for each palidrome, how many times it occurs. For example
//["Civi": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]

// $sentence = "madam anna kayak notapalindrome anna Civic racecar Civic";
*/
$sentence = "madam anna kayak notapalindrome anna Civic racecar Civic";
print_r(getSentenceCount($sentence));
function getSentenceCount($sentence){
    $words = explode(' ',$sentence);

    $count = [];
    foreach($words as $word){
        if(isPalindrome($word)){
            if(!isset($count[$word])){
                $count[$word] = 1;
            }else{
                $count[$word]++;
            }
        }
    }

    return $count;

}


function isPalindrome($word){
    return $word == strrev($word);
}