//Write a program with a mother class and an inherited daugther class.Both of them should have a method void display ()that prints a message (different for mother and daugther).In the main define a daughter and call the display() method on it.
void main()
{
    Daughter daughter = Daughter();
    daughter.display();
}
class Mother
{
    void display()
    {
        print("Welcome in the mother class ");
    }
}
class Daughter extends Mother
{
    void display()
    {
        print("Welcome in the daughter class ");
    }
}
