//Write a probram with a mother class animal. Inside it define a name and an age variables, and set_value() function.
//Then create two bases variables Zebra and Dolphin which write a message telling the age, the name and giving some extra information (e.g. place of origin)

void main()
{
    Zebra zebra = Zebra();
    Dolphin dolphin = Dolphin();

    zebra.set_value("zozo", 6 );
    zebra.set_value("dodo", 7 );
    
    zebra.display();
    dolphin.display();

}
 class Animal
 {
    String? name;
    int? age;
    //Animal(String name , int age);

    void set_value(String name , int age)
    {
        this.name =name;
        this.age = age;
         
    }
 }
 class Zebra extends Animal
 {
    void display()
    {
        print("The Zebra name is : $name , it is $age years old");
        print("The zebra is a mammal belonging to the horse family, known for its unique black-and-white stripes. It primarily lives in Africa, especially in savannas and grasslands.");

    }
 }
 class Dolphin extends Animal
 {
    void display()
    {
        print("The Dolphin name is : $name , it is $age years old");
        print("The dolphin is a marine mammal that belongs to the cetacean family, known for its high intelligence and complex communication. It primarily lives in oceans and seas around the world.");
    }
 }
