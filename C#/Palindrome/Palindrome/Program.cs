using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Palindrome {
    class Program {
        static void Main(string[] args) {
            /*
 Palindrome Algorithm.
 This Algorithm is to check and return the number of palindromes in a sentence.
 What is Palidrome? - https://en.wikipedia.org/wiki/Palindrome
 */

            // Task
            // Implement a function that will tell me for each palidrome, how many times it occurs. For example
            // ["Civi": 1, "madam": 1, "kayak": 1, "anna": 2, "racecar": 1]



            var sentence = "madam anna kayak notapalindrome anna Civic racecar Civic";
            var words = sentence.Split(' ');
            var count = new Dictionary<string, int>();
            foreach (string word in words) {
                if (isPalindrome(word)) {
                    if (!count.ContainsKey(word))
                        count[word] = 1;
                    else
                        count[word]++;
                }
            }


            if (count.Count == 0)
                Console.WriteLine("No Palindrome Word Found In The Sentence");
            else
                foreach (string key in count.Keys)
                    Console.WriteLine("{0} - {1}", key, count[key]);

            Console.ReadKey();
        }

        private static bool isPalindrome(string word) {
            char[] reversedString = word.ToCharArray();
            Array.Reverse(reversedString);
            return word.Equals(new String(reversedString));
        }
    }
}
