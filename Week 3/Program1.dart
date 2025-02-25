// Create a class called Calculator, with no properties but with 4 methods, sum, subtraction, multiplication, and division. Each method should receive two integers as parameters and return their result

void main()
{
    Calc calc = new Calc();
    print("SUM: ${calc.sum(6,3)}");
    print("SUB: ${calc.sub(6,3)}");
    print("MUL: ${calc.mul(6,3)}");
    dynamic res = calc.div(6,3);
    if(res != null)
    {
        print("DIV : $res");
    }    

}
class Calc
{

    int sum(int a, int b)
    {
        return a + b;
    }
    int sub(int a, int b)
    {
        return a - b;
    }
    int mul(int a, int b)
    {
        return a * b;
    }
    dynamic div(int a, int b)
    {
        if(b == 0)
        {
            print("not valid");
            return null;
        }
        else
        {
          return a / b;
        }
        
    }
}
