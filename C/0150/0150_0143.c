#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  unsigned char a = 10;
  static int b[3] = {0, 0, 0};
  int *p = b;

  printf(" TEST START\n");

  *p++ = a ? a : ((unsigned char)-1);
  if(b[0] != a || p-b != 1)
    printf(" NG !!!\n");

  printf(" TEST ENDED\n");
exit (0);
}
