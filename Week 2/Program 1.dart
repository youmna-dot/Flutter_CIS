// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right. (with limit of 7 trials)
import 'dart:io';
void main()
{
    // problem 1
    int Random = 49;
    int times = 7;
    for (int i =1; i<= times ; i++)
    {
        print("Guess num from 1 to 100");
        int num = int.parse(stdin.readLineSync()!);
        if(num == null || num<1 || num>100)
        {
            print("Invalid input. Enter number between 1 and 100");
            continue;
        }
        if (num == Random) 
        {
            print("Exactly right");
        }
        else if (num < Random)
        {
            print("Too low");
        }
        else
        { 
            print("Too high");
        }
    }
    print("Out of times.");
        
}
