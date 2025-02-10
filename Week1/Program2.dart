//Ask the user for a number and determine whether the number is even or not
import 'dart:io';
void main()
{
    print ("Enter a number: ");
    int num = int.parse(stdin.readLineSync()!);
    if(num.isEven )
    {
        print("$num is even");
    }else
    {
        print ("$num is odd");
    }

}
