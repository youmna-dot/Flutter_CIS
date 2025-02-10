//Create a program that asks the user for a number and then prints out a list of all the divisors of that number
import 'dart:io';
void main()
{
    print ("Enter a number: ");
    int num = int.parse(stdin.readLineSync()!);
    List<int> divisors =[];
    for(int i = 1; i<= num ;i++)
    {
        if(num % i ==0)
        {
            divisors.add(i);
        }
    }
    print("The divisors of $num are: $divisors ");

}
