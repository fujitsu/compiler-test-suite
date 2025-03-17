#include <cassert> 

enum [[using CC:debug]]E {a,b};
enum [[CC::opt(1)]] N { x,y};

int main()
{
   assert((int)a == 0);
   assert((int)b == 1);
   assert((int)x == 0);
   assert((int)y == 1);
}
