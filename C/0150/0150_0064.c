#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static struct tag1 {
      int   arr[3];
      }cx ={1,2,3};
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  int   y  = 1;
  x1 = cx.arr[y];
  if(x1 == 2)
    printf("*** M3EMEB21-01 *** O   K ***\n");
  else
    printf("*** M3EMEB21-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  x2 = cx.arr[1];
  if(x2 == 2)
    printf("*** M3EMEB21-02 *** O   K ***\n");
  else
    printf("*** M3EMEB21-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  x3 = cx.arr[2/2];
  if(x3 == 2)
    printf("*** M3EMEB21-03 *** O   K ***\n");
  else
    printf("*** M3EMEB21-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  x4 = cx.arr[1*2];
  if(x4 == 3)
    printf("*** M3EMEB21-04 *** O   K ***\n");
  else
    printf("*** M3EMEB21-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  x5 = cx.arr[3%2];
  if(x5 == 2)
    printf("*** M3EMEB21-05 *** O   K ***\n");
  else
    printf("*** M3EMEB21-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  x6 = cx.arr[1+1];
  if(x6 == 3)
    printf("*** M3EMEB21-06 *** O   K ***\n");
  else
    printf("*** M3EMEB21-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  x7 = cx.arr[2-1];
  if(x7 == 2)
    printf("*** M3EMEB21-07 *** O   K ***\n");
  else
    printf("*** M3EMEB21-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  x8 = cx.arr[1&1];
  if(x8 == 2)
    printf("*** M3EMEB21-08 *** O   K ***\n");
  else
    printf("*** M3EMEB21-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  x9 = cx.arr[1|0];
  if(x9 == 2)
    printf("*** M3EMEB21-09 *** O   K ***\n");
  else
    printf("*** M3EMEB21-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  x0 = cx.arr[1^0];
  if(x0 == 2)
    printf("*** M3EMEB21-10 *** O   K ***\n");
  else
    printf("*** M3EMEB21-10 *** N   G ***\n");
  }
  printf("*** M3EMEB21 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
