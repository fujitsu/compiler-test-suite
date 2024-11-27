#include <stdio.h>
#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

static ATTR(always_inline) int max(x,y)
int x, y;
{
    return x > y ? x : y;
}
int main()
{
   int x ;
   x = max(0);
   if( x != 0 && x == 0) puts("NG1");
   x = max(1);
   if( x != 1 && x == 1) puts("NG2");
   puts("OK");
}

