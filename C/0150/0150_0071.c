#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  static struct tag1 {
      int   arr[3];
      }cx ={1,2,3},*px = &cx;
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  int   i1 = 0;
  x1 = px->arr[++i1];
  if(x1 == 2)
    printf("*** M3EMEB28-01 *** O   K ***\n");
  else
    printf("*** M3EMEB28-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   i2 = 2;
  x2 = px->arr[--i2];
  if(x2 == 2)
    printf("*** M3EMEB28-02 *** O   K ***\n");
  else
    printf("*** M3EMEB28-02 *** N   G ***\n");
  }
 
 
 
  {
  int   x4 = 0;
  int   i4 = 1;
  int   *pt;
  pt = &i4;
  x4 = px->arr[*pt];
  if(x4 == 2)
    printf("*** M3EMEB28-03 *** O   K ***\n");
  else
    printf("*** M3EMEB28-03 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   i5 =1;
  x5 = px->arr[+i5];
  if(x5 == 2)
    printf("*** M3EMEB28-04 *** O   K ***\n");
  else
    printf("*** M3EMEB28-04 *** N   G ***\n");
  }
 
 
 
  {
  int   x7 = 0;
  int   i7 = -2;
  x7 = px->arr[~i7];
  if(x7 == 2)
    printf("*** M3EMEB28-05 *** O   K ***\n");
  else
    printf("*** M3EMEB28-05 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   i8 = 0;
  x8 = px->arr[!i8];
  if(x8 == 2)
    printf("*** M3EMEB28-06 *** O   K ***\n");
  else
    printf("*** M3EMEB28-06 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  x9 = px->arr[(2>1)?1:0];
  if(x9 == 2)
    printf("*** M3EMEB28-07 *** O   K ***\n");
  else
    printf("*** M3EMEB28-07 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  char  i0 = 2;
  x0 = px->arr[sizeof i0];
  if(x0 == 2)
    printf("*** M3EMEB28-08 *** O   K ***\n");
  else
    printf("*** M3EMEB28-08 *** N   G ***\n");
  }
  printf("*** M3EMEB28 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
