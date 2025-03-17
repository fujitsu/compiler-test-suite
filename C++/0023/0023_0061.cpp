#include <cassert>

struct base1
{ 
    int b1, b2 = 42; 
};
struct base2
{
    base2()
    {
        b3 = 42;
    }
    int b3;
};
struct derived : base1, base2 
{
    int d;
};

int main()
{
   derived d1{{1, 2}, {}, 4};
   derived d2{{}, {}, 4};
   assert(d1.b1==1);
   assert(d1.b2==2);
   assert(d1.b3==42);
   assert(d1.d==4);
   assert(d2.b1==0);
   assert(d2.b2==42);
   assert(d2.b3==42);
   assert(d2.d==4);
}
