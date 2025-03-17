#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static struct tag1 {
    int   arr[3];
    }cx ={1,2,3};
 
int f()
{
return(1);
}
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  x1 = cx.arr[f()];
  if(x1 == 2)
    printf("*** M3EMEB24-01 *** O   K ***\n");
  else
    printf("*** M3EMEB24-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 0;
  x2 = cx.arr[a2=1];
  if(x2 == 2)
    printf("*** M3EMEB24-02 *** O   K ***\n");
  else
    printf("*** M3EMEB24-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  int   a3 = 2;
  x3 = cx.arr[a3*=1];
  if(x3 == 3)
    printf("*** M3EMEB24-03 *** O   K ***\n");
  else
    printf("*** M3EMEB24-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  int   a4 = 1;
  x4 = cx.arr[a4/=1];
  if(x4 == 2)
    printf("*** M3EMEB24-04 *** O   K ***\n");
  else
    printf("*** M3EMEB24-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   a5 = 3;
  x5 = cx.arr[a5%=2];
  if(x5 == 2)
    printf("*** M3EMEB24-05 *** O   K ***\n");
  else
    printf("*** M3EMEB24-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  int   a6 = 0;
  x6 = cx.arr[a6+=1];
  if(x6 == 2)
    printf("*** M3EMEB24-06 *** O   K ***\n");
  else
    printf("*** M3EMEB24-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  int   a7 = 2;
  x7 = cx.arr[a7-=1];
  if(x7 == 2)
    printf("*** M3EMEB24-07 *** O   K ***\n");
  else
    printf("*** M3EMEB24-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   a8 = 1;
  x8 = cx.arr[a8<<=1];
  if(x8 == 3)
    printf("*** M3EMEB24-08 *** O   K ***\n");
  else
    printf("*** M3EMEB24-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  int   a9 = 2;
  x9 = cx.arr[a9>>=1];
  if(x9 == 2)
    printf("*** M3EMEB24-09 *** O   K ***\n");
  else
    printf("*** M3EMEB24-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  int   a0 = 1;
  x0 = cx.arr[a0&=1];
  if(x0 == 2)
    printf("*** M3EMEB24-10 *** O   K ***\n");
  else
    printf("*** M3EMEB24-10 *** N   G ***\n");
  }
  printf("*** M3EMEB24 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
