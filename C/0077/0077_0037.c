#include <stdio.h>
#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

static ATTR(always_inline) int max(x)
int x;
{
    int y=0;
    return x > y ? x : y;
}
int main()
{
   if( max(0,2) != 0 ) puts("NG1");
   if( max(1,3) != 1 ) puts("NG2");
   puts("OK");
}

