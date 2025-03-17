#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int  arr[3][3]={1,2,3,4,5,6,7,8,9};
 
static int  brr[2] ={0,1};
 
static struct tag2 {
    int  b1;
    }cx ={2},*px = &cx;
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  int   a1 = 0;
  x1 = arr[1][a1^=1];
  if(x1 == 5)
    printf("*** M3EMEB35-01 *** O   K ***\n");
  else
    printf("*** M3EMEB35-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = arr[1][a2|=1];
  if(x2 == 5)
    printf("*** M3EMEB35-02 *** O   K ***\n");
  else
    printf("*** M3EMEB35-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  x3 = arr[1][cx.b1];
  if(x3 == 6)
    printf("*** M3EMEB35-03 *** O   K ***\n");
  else
    printf("*** M3EMEB35-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  x4 = arr[1][px->b1];
  if(x4 == 6)
    printf("*** M3EMEB35-04 *** O   K ***\n");
  else
    printf("*** M3EMEB35-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  x5 = arr[1][brr[1]];
  if(x5 == 5)
    printf("*** M3EMEB35-05 *** O   K ***\n");
  else
    printf("*** M3EMEB35-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  x6 = arr[1][1,2];
  if(x6 == 6)
    printf("*** M3EMEB35-06 *** O   K ***\n");
  else
    printf("*** M3EMEB35-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = arr[1][(int) a7];
  if(x7 == 5)
    printf("*** M3EMEB35-07 *** O   K ***\n");
  else
    printf("*** M3EMEB35-07 *** N   G ***\n");
  }
 
  printf("*** M3EMEB35 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
