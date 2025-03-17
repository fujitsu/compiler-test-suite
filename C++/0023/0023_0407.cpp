#include <cassert>

[[ using CC: opt(1)]][[ using CC:debug ]] 
void f(int m) 
{
   assert(m == 1);
}

[[ CC::opt(1)]][[ CC::debug ]] 
void g(int w) 
{
   assert(w == 6);
}

int main()
{
   f(1);
   g(6);
}
