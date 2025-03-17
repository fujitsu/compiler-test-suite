#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int  arr[3][3]={1,2,3,4,5,6,7,8,9};
 
int f()
{
return(1);
}
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  x1 = arr[1][f()];
  if(x1 == 5)
    printf("*** M3EMEB34-01 *** O   K ***\n");
  else
    printf("*** M3EMEB34-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 0;
  x2 = arr[1][a2=1];
  if(x2 == 5)
    printf("*** M3EMEB34-02 *** O   K ***\n");
  else
    printf("*** M3EMEB34-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  int   a3 = 2;
  x3 = arr[1][a3*=1];
  if(x3 == 6)
    printf("*** M3EMEB34-03 *** O   K ***\n");
  else
    printf("*** M3EMEB34-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  int   a4 = 1;
  x4 = arr[1][a4/=1];
  if(x4 == 5)
    printf("*** M3EMEB34-04 *** O   K ***\n");
  else
    printf("*** M3EMEB34-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   a5 = 3;
  x5 = arr[1][a5%=2];
  if(x5 == 5)
    printf("*** M3EMEB34-05 *** O   K ***\n");
  else
    printf("*** M3EMEB34-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  int   a6 = 0;
  x6 = arr[1][a6+=1];
  if(x6 == 5)
    printf("*** M3EMEB34-06 *** O   K ***\n");
  else
    printf("*** M3EMEB34-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  int   a7 = 2;
  x7 = arr[1][a7-=1];
  if(x7 == 5)
    printf("*** M3EMEB34-07 *** O   K ***\n");
  else
    printf("*** M3EMEB34-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   a8 = 1;
  x8 = arr[1][a8<<=1];
  if(x8 == 6)
    printf("*** M3EMEB34-08 *** O   K ***\n");
  else
    printf("*** M3EMEB34-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  int   a9 = 2;
  x9 = arr[1][a9>>=1];
  if(x9 == 5)
    printf("*** M3EMEB34-09 *** O   K ***\n");
  else
    printf("*** M3EMEB34-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  int   a0 = 1;
  x0 = arr[1][a0&=1];
  if(x0 == 5)
    printf("*** M3EMEB34-10 *** O   K ***\n");
  else
    printf("*** M3EMEB34-10 *** N   G ***\n");
  }
  printf("*** M3EMEB34 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
