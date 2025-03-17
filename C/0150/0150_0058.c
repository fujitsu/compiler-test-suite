#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static int   arr[5] ={1,2,3,4,5};
 
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
  x1 = (arr+1)[a1^=1];
  if(x1 == 3)
    printf("*** M3EMEB10-01 *** O   K ***\n");
  else
    printf("*** M3EMEB10-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = (arr+1)[a2|=1];
  if(x2 == 3)
    printf("*** M3EMEB10-02 *** O   K ***\n");
  else
    printf("*** M3EMEB10-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  x3 = (arr+1)[cx.b1];
  if(x3 == 4)
    printf("*** M3EMEB10-03 *** O   K ***\n");
  else
    printf("*** M3EMEB10-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  x4 = (arr+1)[po->b1];
  if(x4 == 4)
    printf("*** M3EMEB10-04 *** O   K ***\n");
  else
    printf("*** M3EMEB10-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  x5 = (arr+1)[brr[0]];
  if(x5 == 2)
    printf("*** M3EMEB10-05 *** O   K ***\n");
  else
    printf("*** M3EMEB10-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  x6 = (arr+1)[1,2];
  if(x6 == 4)
    printf("*** M3EMEB10-06 *** O   K ***\n");
  else
    printf("*** M3EMEB10-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = (arr+1)[(int) a7];
  if(x7 == 3)
    printf("*** M3EMEB10-07 *** O   K ***\n");
  else
    printf("*** M3EMEB10-07 *** N   G ***\n");
  }
 
  printf("*** M3EMEB10 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
