#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static int  arr[3][3]={1,2,3,4,5,6,7,8,9};
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  int   i1 = 0;
  x1 = arr[1][++i1];
  if(x1 == 5)
    printf("*** M3EMEB33-01 *** O   K ***\n");
  else
    printf("*** M3EMEB33-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   i2 = 2;
  x2 = arr[1][--i2];
  if(x2 == 5)
    printf("*** M3EMEB33-02 *** O   K ***\n");
  else
    printf("*** M3EMEB33-02 *** N   G ***\n");
  }
 
 
 
  {
  int   x4 = 0;
  int   i4 = 1;
  int   *pt;
  pt = &i4;
  x4 = arr[1][*pt];
  if(x4 == 5)
    printf("*** M3EMEB33-03 *** O   K ***\n");
  else
    printf("*** M3EMEB33-03 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   i5 =1;
  x5 = arr[1][+i5];
  if(x5 == 5)
    printf("*** M3EMEB33-04 *** O   K ***\n");
  else
    printf("*** M3EMEB33-04 *** N   G ***\n");
  }
 
 
 
  {
  int   x7 = 0;
  int   i7 = -2;
  x7 = arr[1][~i7];
  if(x7 == 5)
    printf("*** M3EMEB33-05 *** O   K ***\n");
  else
    printf("*** M3EMEB33-05 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   i8 = 0;
  x8 = arr[1][!i8];
  if(x8 == 5)
    printf("*** M3EMEB33-06 *** O   K ***\n");
  else
    printf("*** M3EMEB33-06 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  x9 = arr[1][(2>1)?1:0];
  if(x9 == 5)
    printf("*** M3EMEB33-07 *** O   K ***\n");
  else
    printf("*** M3EMEB33-07 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  char  i0 = 2;
  x0 = arr[1][sizeof i0];
  if(x0 == 5)
    printf("*** M3EMEB33-08 *** O   K ***\n");
  else
    printf("*** M3EMEB33-08 *** N   G ***\n");
  }
  printf("*** M3EMEB33 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
