//*Write a program that takes a list of numbers for example*

//a = [5, 10, 15, 20, 25] *and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.*

import 'dart:io';
void main()
{
    List<int> a = [5, 10, 15, 20, 25];
    List<int> b=[a.first ,a.last];
    print("First and last elements:");
    print(b);

    //another solution if I will take a list from user
    print ("Enter a list separated by spaces: ");
    String list = stdin.readLineSync()!;
    List<int> a = list.split(" ").map((e) => int.parse(e)).toList();
    
    if(a.isEmpty)
    {
        print("[]");
    }else
    {
        List<int> b=[a.first ,a.last];
        print("First and last elements: $b");
    }


}
