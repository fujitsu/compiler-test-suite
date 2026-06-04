#include <stdio.h>

#if  __STDC_VERSION__ == 199901L 
int main()
{
  int   counter = 0;
  _Bool Use = 1;
  counter = Use + !(Use);

  printf(" %d \n",counter);
  return 0;
}
#else
int main()
{
  printf(" 1 \n");
  return 0;
}
#endif
