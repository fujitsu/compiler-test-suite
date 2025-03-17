#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static int   arr[3] ={1,2,3},(*po)[3];
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
  po = &arr;
 
 
  {
  int   x1 = 0;
  int   i1 = 0;
  x1 = (*po)[++i1];
  if(x1 == 2)
    printf("*** M3EMEB18-01 *** O   K ***\n");
  else
    printf("*** M3EMEB18-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   i2 = 2;
  x2 = (*po)[--i2];
  if(x2 == 2)
    printf("*** M3EMEB18-02 *** O   K ***\n");
  else
    printf("*** M3EMEB18-02 *** N   G ***\n");
  }
 
 
 
  {
  int   x4 = 0;
  int   i4 = 1;
  int   *pt;
  pt = &i4;
  x4 = (*po)[*pt];
  if(x4 == 2)
    printf("*** M3EMEB18-03 *** O   K ***\n");
  else
    printf("*** M3EMEB18-03 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   i5 =1;
  x5 = (*po)[+i5];
  if(x5 == 2)
    printf("*** M3EMEB18-04 *** O   K ***\n");
  else
    printf("*** M3EMEB18-04 *** N   G ***\n");
  }
 
 
 
  {
  int   x7 = 0;
  int   i7 = -2;
  x7 = (*po)[~i7];
  if(x7 == 2)
    printf("*** M3EMEB18-05 *** O   K ***\n");
  else
    printf("*** M3EMEB18-05 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   i8 = 0;
  x8 = (*po)[!i8];
  if(x8 == 2)
    printf("*** M3EMEB18-06 *** O   K ***\n");
  else
    printf("*** M3EMEB18-06 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  x9 = (*po)[(2>1)?1:0];
  if(x9 == 2)
    printf("*** M3EMEB18-07 *** O   K ***\n");
  else
    printf("*** M3EMEB18-07 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  char  i0 = 2;
  x0 = (*po)[sizeof i0];
  if(x0 == 2)
    printf("*** M3EMEB18-08 *** O   K ***\n");
  else
    printf("*** M3EMEB18-08 *** N   G ***\n");
  }
  printf("*** M3EMEB18 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
