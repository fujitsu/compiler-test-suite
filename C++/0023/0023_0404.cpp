#include <cassert> 

enum E {a [[using CC:opt(1)]],b[[using CC:opt(1)]],c[[CC::debug]],d[[CC::opt(1)]]};

int main()
{
   assert((int)a == 0);
   assert((int)b == 1);
   assert((int)c == 2);
   assert((int)d == 3);
}
