#include <cassert> 

enum E {a [[using CC:opt(1)]],b [[CC::bebug]],c};

int main()
{
   assert((int)a == 0);
   assert((int)b == 1);
   assert((int)c == 2);
}
