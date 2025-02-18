//Write a password generator in Dart. Be creative with how you generate passwords - strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols.
//The passwords should be random, generating a new password every time the user asks for a new password. Include your run-time code in a main method
import 'dart:io';
void main()
{
    // problem 3
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    List<int> common=[];
    for (int i = 0; i < a.length; i++) 
    {
        for (int j = 0; j < b.length; j++)
        {
            if(a[i] == b[j] && !common.contains(a[i]))
            {
                common.add(a[i]);
            }
        }
    }
            print("Common elements are : $common");
        
}
