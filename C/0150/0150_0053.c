#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int   arr[3] ={1,2,3};
 
static int   brr[2] ={0,1};
 
static struct tag {
    int  b1;
    }cx ={2},*po = &cx;
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  int   a1 = 0;
  x1 = arr[a1^=1];
  if(x1 == 2)
    printf("*** M3EMEB05-01 *** O   K ***\n");
  else
    printf("*** M3EMEB05-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = arr[a2|=1];
  if(x2 == 2)
    printf("*** M3EMEB05-02 *** O   K ***\n");
  else
    printf("*** M3EMEB05-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  x3 = arr[cx.b1];
  if(x3 == 3)
    printf("*** M3EMEB05-03 *** O   K ***\n");
  else
    printf("*** M3EMEB05-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  x4 = arr[po->b1];
  if(x4 == 3)
    printf("*** M3EMEB05-04 *** O   K ***\n");
  else
    printf("*** M3EMEB05-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  x5 = arr[brr[0]];
  if(x5 == 1)
    printf("*** M3EMEB05-05 *** O   K ***\n");
  else
    printf("*** M3EMEB05-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  x6 = arr[1,2];
  if(x6 == 3)
    printf("*** M3EMEB05-06 *** O   K ***\n");
  else
    printf("*** M3EMEB05-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = arr[(int) a7];
  if(x7 == 2)
    printf("*** M3EMEB05-07 *** O   K ***\n");
  else
    printf("*** M3EMEB05-07 *** N   G ***\n");
  }
 
  printf("*** M3EMEB05 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
