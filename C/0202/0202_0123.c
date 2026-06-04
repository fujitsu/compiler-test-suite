#include <stdio.h>

#if  __STDC_VERSION__ == 199901L 
int main()
{
  int a=1, b=1, c=1, d=1, e=1;

   a = (b *= c + d) + e;
  printf(" OK \n");
  return 0;
}
#else
int main()
{
  printf(" OK \n");
  return 0;
}
#endif

