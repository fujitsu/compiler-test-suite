#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int   arr[5] ={1,2,3,4,5};
 
int f()
{
return(1);
}
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  x1 = (arr+1)[f()];
  if(x1 == 3)
    printf("*** M3EMEB09-01 *** O   K ***\n");
  else
    printf("*** M3EMEB09-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 0;
  x2 = (arr+1)[a2=1];
  if(x2 == 3)
    printf("*** M3EMEB09-02 *** O   K ***\n");
  else
    printf("*** M3EMEB09-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  int   a3 = 0;
  x3 = (arr+1)[a3*=1];
  if(x3 == 2)
    printf("*** M3EMEB09-03 *** O   K ***\n");
  else
    printf("*** M3EMEB09-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  int   a4 = 1;
  x4 = (arr+1)[a4/=1];
  if(x4 == 3)
    printf("*** M3EMEB09-04 *** O   K ***\n");
  else
    printf("*** M3EMEB09-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   a5 = 3;
  x5 = (arr+1)[a5%=2];
  if(x5 == 3)
    printf("*** M3EMEB09-05 *** O   K ***\n");
  else
    printf("*** M3EMEB09-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  int   a6 = 0;
  x6 = (arr+1)[a6+=1];
  if(x6 == 3)
    printf("*** M3EMEB09-06 *** O   K ***\n");
  else
    printf("*** M3EMEB09-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  int   a7 = 1;
  x7 = (arr+1)[a7-=1];
  if(x7 == 2)
    printf("*** M3EMEB09-07 *** O   K ***\n");
  else
    printf("*** M3EMEB09-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   a8 = 1;
  x8 = (arr+1)[a8<<=1];
  if(x8 == 4)
    printf("*** M3EMEB09-08 *** O   K ***\n");
  else
    printf("*** M3EMEB09-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  int   a9 = 2;
  x9 = (arr+1)[a9>>=1];
  if(x9 == 3)
    printf("*** M3EMEB09-09 *** O   K ***\n");
  else
    printf("*** M3EMEB09-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  int   a0 = 0;
  x0 = (arr+1)[a0&=1];
  if(x0 == 2)
    printf("*** M3EMEB09-10 *** O   K ***\n");
  else
    printf("*** M3EMEB09-10 *** N   G ***\n");
  }
  printf("*** M3EMEB09 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
