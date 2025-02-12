//Given a list of integers, write a function that finds the max and min integers in the list, without using any library functions in Dart.
List<int> a = [5, 10, 15, 20, 25];
    int max=a[0];
    int min=a[0];
    for(int i =1; i< a.length; i++)
    {
        if(a[i] > max)
        {
            max = a[i];
        }
        if(a[i] < min)
        {
            min = a[i];
        }
    }
    print("Max number is : $max , Min number is : $min");
    
