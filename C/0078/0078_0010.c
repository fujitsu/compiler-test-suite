#include <stdio.h>
struct TAG {
#if defined(__SUNPRO_C)
  long int i : 31;
#else
  long long int i : 63;
#endif
} st;

struct TAG fun(int f)
{
  struct TAG x,y;
  x.i = 1;
  y.i = 2;
  if( f ) return x;
  return y;
}
int main()
{
  struct TAG y;
  y = fun(1);
  printf("%d \n",(int )y.i);
  y = fun(0);
  printf("%d \n",(int )y.i);
}
