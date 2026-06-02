#include <stdio.h>

#if  __STDC_VERSION__ == 199901L 
_Bool b = (_Bool) 10;

int main()
{
  int   i = 0;

  b = !(b) + i;

  if ( b ) {
    printf("NG  %d \n",b);
  } else {
    printf("OK  %d \n",b);
  }

  return 0;
}
#else
int main()
{
    printf("OK  0 \n");
}
#endif

