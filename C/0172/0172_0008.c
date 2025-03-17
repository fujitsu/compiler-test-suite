
#include <stdarg.h>
#include <stdio.h>

void sub0(int aa, ... )
{
  va_list xx,yy;
  va_start(xx,aa);
#if defined(__x86_64__)

    memcpy(yy,xx,sizeof(xx));

#else
  yy = xx;
#endif
  
  vprintf("%d %d %d %d %d %d \n",yy);
}
int main(void)
{
  int a,b,c,d,e,f,g;
  a = 1;
  b = 2;
  c = 3;
  d = 4;
  e = 5;
  f = 6;
  g = 7;
  printf("## va_copy test start ## \n");
  sub0(a,b,c,d,e,f,g);
  printf("## va_copy test end   ## \n");
}

