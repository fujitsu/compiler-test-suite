#include <cassert>

template <const int & r> struct B
{
   void fun()
   {
       assert(r == 1);
   }
};

int c = 1;

int main()
{  
   B<c> b;
   b.fun();
}
