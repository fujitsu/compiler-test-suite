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
  x1 = (*po)[1&&1];
  if(x1 == 2)
    printf("*** M3EMEB17-01 *** O   K ***\n");
  else
    printf("*** M3EMEB17-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  x2 = (*po)[1||0];
  if(x2 == 2)
    printf("*** M3EMEB17-02 *** O   K ***\n");
  else
    printf("*** M3EMEB17-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  x3 = (*po)[1<<1];
  if(x3 == 3)
    printf("*** M3EMEB17-03 *** O   K ***\n");
  else
    printf("*** M3EMEB17-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  x4 = (*po)[2>>1];
  if(x4 == 2)
    printf("*** M3EMEB17-04 *** O   K ***\n");
  else
    printf("*** M3EMEB17-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  x5 = (*po)[2==2];
  if(x5 == 2)
    printf("*** M3EMEB17-05 *** O   K ***\n");
  else
    printf("*** M3EMEB17-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  x6 = (*po)[1!=2];
  if(x6 == 2)
    printf("*** M3EMEB17-06 *** O   K ***\n");
  else
    printf("*** M3EMEB17-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  x7 = (*po)[1<2];
  if(x7 == 2)
    printf("*** M3EMEB17-07 *** O   K ***\n");
  else
    printf("*** M3EMEB17-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  x8 = (*po)[2>1];
  if(x8 == 2)
    printf("*** M3EMEB17-08 *** O   K ***\n");
  else
    printf("*** M3EMEB17-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  x9 = (*po)[2<=2];
  if(x9 == 2)
    printf("*** M3EMEB17-09 *** O   K ***\n");
  else
    printf("*** M3EMEB17-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  x0 = (*po)[2>=2];
  if(x0 == 2)
    printf("*** M3EMEB17-10 *** O   K ***\n");
  else
    printf("*** M3EMEB17-10 *** N   G ***\n");
  }
  printf("*** M3EMEB17 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
