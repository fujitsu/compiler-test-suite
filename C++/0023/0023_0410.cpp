#include <cassert>

[[ using CC: opt(1), debug ]] 
void f(double d)
{
   assert(d == 2.1);
}

[[ CC::debug, opt(1) ]] 
void g(bool b)
{
   assert(b == true);
}

int main()
{
   f(2.1);
   g(true);
}
