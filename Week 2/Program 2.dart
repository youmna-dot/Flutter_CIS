//Ask the user for a string and print out whether this string is a palindrome or not. A palindrome is a string that reads the same forwards and backwards.
import 'dart:io';
void main()
{
    // problem 2
    print("Enter the string : ");
    String str = stdin.readLineSync()!;
    List<String> letters = [];
    for (int i = 0; i < str.length; i++) 
    {
        String char = str[i];
        if(char != ' ')
        {
            letters.add(char);
        }
    }

    List<String> reversed= [];
    for (int i = letters.length - 1; i >= 0; i--)
    {
        reversed.add(letters[i]);
    }

    if(letters.join() == reversed.join())
    {
        print("It's a palindrome ");
    }
    else{
        print("It's not a palindrome ");
    }
        
}
