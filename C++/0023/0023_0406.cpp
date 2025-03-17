#include <cassert> 

enum [[using CC:debug]][[using CC:debug]]E {a,b};
enum [[CC::debug]][[CC::opt(1)]]V {c,d};

int main()
{
   assert((int)a == 0);
   assert((int)b == 1);
   assert((int)c == 0);
   assert((int)d == 1);
}