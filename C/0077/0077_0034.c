#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

#include <stdlib.h>

#ifdef __GNUC__
static ATTR(always_inline) void *test(void)
{
   void *p = __builtin_return_address(0);
   return p;
}
int main()
{
   void *q = __builtin_return_address(0);
   if( test() != q ) puts("NG");
   else              puts("OK");
}

#else
int main()
{
   puts("OK");
}
#endif
