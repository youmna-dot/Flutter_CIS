//Write a program that defines a shape class with a constructor that gives value to width and height. The define two sub-classes triangle and rectangle, that calculate the area of the shape area ().
// In the main, define two variables a triangle and a rectangle and then call the area() function in this two varibles.

void main()
{
    Triangle triangle = Triangle(12,6);
    print("Triangle Area: ${triangle.area()}");

    Rectangle rectangle =Rectangle(12,6);
    print("Rectangle Area: ${rectangle.area()}");
    

}
class Shape
{
    double width , height;
    Shape(this.width , this.height);
    
}
 class Rectangle extends Shape
 {
    Rectangle(double width , double height) : super (width, height);
    double area()
    {
         return width * height;
    }
 }
 
 class Triangle extends Shape
 {
    Triangle(double width , double height) : super (width, height);
    double area()
    {
        return (width * height) / 2;

    }

 }
