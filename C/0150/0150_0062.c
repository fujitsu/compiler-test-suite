#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int   arr[3] ={1,2,3},(*po)[3];
 
int f()
{
return(1);
}
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
  po = &arr;
 
 
  {
  int   x1 = 0;
  x1 = (*po)[f()];
  if(x1 == 2)
    printf("*** M3EMEB19-01 *** O   K ***\n");
  else
    printf("*** M3EMEB19-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 0;
  x2 = (*po)[a2=1];
  if(x2 == 2)
    printf("*** M3EMEB19-02 *** O   K ***\n");
  else
    printf("*** M3EMEB19-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  int   a3 = 2;
  x3 = (*po)[a3*=1];
  if(x3 == 3)
    printf("*** M3EMEB19-03 *** O   K ***\n");
  else
    printf("*** M3EMEB19-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  int   a4 = 1;
  x4 = (*po)[a4/=1];
  if(x4 == 2)
    printf("*** M3EMEB19-04 *** O   K ***\n");
  else
    printf("*** M3EMEB19-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   a5 = 3;
  x5 = (*po)[a5%=2];
  if(x5 == 2)
    printf("*** M3EMEB19-05 *** O   K ***\n");
  else
    printf("*** M3EMEB19-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  int   a6 = 0;
  x6 = (*po)[a6+=1];
  if(x6 == 2)
    printf("*** M3EMEB19-06 *** O   K ***\n");
  else
    printf("*** M3EMEB19-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  int   a7 = 2;
  x7 = (*po)[a7-=1];
  if(x7 == 2)
    printf("*** M3EMEB19-07 *** O   K ***\n");
  else
    printf("*** M3EMEB19-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   a8 = 1;
  x8 = (*po)[a8<<=1];
  if(x8 == 3)
    printf("*** M3EMEB19-08 *** O   K ***\n");
  else
    printf("*** M3EMEB19-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  int   a9 = 2;
  x9 = (*po)[a9>>=1];
  if(x9 == 2)
    printf("*** M3EMEB19-09 *** O   K ***\n");
  else
    printf("*** M3EMEB19-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  int   a0 = 1;
  x0 = (*po)[a0&=1];
  if(x0 == 2)
    printf("*** M3EMEB19-10 *** O   K ***\n");
  else
    printf("*** M3EMEB19-10 *** N   G ***\n");
  }
  printf("*** M3EMEB19 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
