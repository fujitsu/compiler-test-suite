#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

static ATTR(always_inline) int max(int x, int y)
{
    return x > y ? x : y;
}
int main()
{
   if( max(0,1) != 1 ) puts("NG1");
   if( max(1,0) != 1 ) puts("NG2");
   puts("OK");
}

