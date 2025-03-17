#include <cassert>

[[ using CC: opt(1)]] 
void f(double d)
{
   assert(d == 2.1);
}

[[ CC::debug]] 
void g(int a)
{
   assert(a == 5);
}

int main()
{
   f(2.1);
   g(5);
}