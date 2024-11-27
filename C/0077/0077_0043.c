#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif


static ATTR(always_inline) unsigned long factorial(int n)
{
  if (n == 1) {
    return n;
  }
  return n * factorial(n-1);
}
int main()
{
   if( factorial(5) != 120 ) printf("NG1 %d\n", factorial(5));
   if( factorial(6) != 720 ) printf("NG2 %d\n", factorial(6));
   puts("OK");
}

