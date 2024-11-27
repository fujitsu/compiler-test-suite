#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

#include <stdlib.h>
#include <alloca.h>

static ATTR(always_inline) int max(int x, int y, int n)
{
    int *p = alloca(sizeof(int)*100);
    p[n] = x > y ? x : y;
    return p[n];
}
int main()
{
   if( max(0,1,0) != 1 ) puts("NG1");
   if( max(1,0,99) != 1 ) puts("NG2");
   puts("OK");
}

