#include  <stdio.h>

int main()
{
#ifdef NO_LONG_LONG
  double a,b,c;
#else
  long double a,b,c;
#endif
  a=2.0;
  b=8.0;
  c=b/a;
  printf("c=b/a \n");
  if(c==4.0)
  printf("ok\n");
  else
  printf("ng\n");

}
