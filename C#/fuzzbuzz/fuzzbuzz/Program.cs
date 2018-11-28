using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace fuzzbuzz {
    class Program {
        static void Main(string[] args) {
            Console.WriteLine("Welcome to the FUZZBUZZ maker");
            Console.WriteLine("Enter a number?");
            try {
                fuzzbuzzMaker(int.Parse(Console.ReadLine()));
            }catch(Exception e) {
                Console.WriteLine(e.Message);
            }

            Console.ReadKey();
        }

        private static void fuzzbuzzMaker(int number) {
            if (number % 5 == 0 && number % 3 == 0)
                Console.WriteLine("FuZZBUZZ");
            else if (number % 3 == 0)
                Console.WriteLine("FUZZ");
            else if(number % 5 == 0)
                Console.WriteLine("BUZZ");
        
        }
    }
}
