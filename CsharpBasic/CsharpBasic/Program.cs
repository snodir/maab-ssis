using System;

namespace CsharpBasic
{
    class Program
    {
        static void Main(string[] args)
        {
            for (int row = 0; row < 5; row++)
            {
                for (int col = 5-row; col > row; col--)
                {
                    Console.Write("n");
                }
                Console.WriteLine();
            }
           
        }
    }
}
