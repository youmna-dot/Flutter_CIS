//Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.
import 'dart:io';
void main()
{
    print("Enter your name : ");
    String? name = stdin.readLineSync();
    print ("Enter your age: ");
    int age = int.parse(stdin.readLineSync()!);

    int sub100 = 100 - age;
    print ("Hi $name, You must have $sub100 years to be 100 years old");

}
