//*Take a list, say for example this one:*

//a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89] *and write a program that prints out all the elements of the list that are less than 5.*


import 'dart:io';
void main()
{
   List<int> a =  [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    print("Numbers less than 5:");
    for(int i=0; i< a.length; i++)
    {
        if(a[i]< 5)
        {
            print(a[i]);
        }
    }

    // another solution
    //List<int> a =  [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    //print("Numbers less than 5:");
    //for(int num in a)
    //{
    //  if(num< 5)
   //{
   //  print(num);
   //}
   //}
}
