#include <stdlib.h>
#include <stdio.h>
#include <math.h>
static struct tag1 {
    int   arr[3];
    }cx ={1,2,3},*px = &cx;
 
int f()
{
return(1);
}
int main()
{
  printf("***  TEST FOR G_EXMEMB *** STARTED ***\n");
 
 
  {
  int   x1 = 0;
  x1 = px->arr[f()];
  if(x1 == 2)
    printf("*** M3EMEB29-01 *** O   K ***\n");
  else
    printf("*** M3EMEB29-01 *** N   G ***\n");
  }
 
 
  {
  int   x2 = 0;
  int   a2 = 0;
  x2 = px->arr[a2=1];
  if(x2 == 2)
    printf("*** M3EMEB29-02 *** O   K ***\n");
  else
    printf("*** M3EMEB29-02 *** N   G ***\n");
  }
 
 
  {
  int   x3 = 0;
  int   a3 = 2;
  x3 = px->arr[a3*=1];
  if(x3 == 3)
    printf("*** M3EMEB29-03 *** O   K ***\n");
  else
    printf("*** M3EMEB29-03 *** N   G ***\n");
  }
 
 
  {
  int   x4 = 0;
  int   a4 = 1;
  x4 = px->arr[a4/=1];
  if(x4 == 2)
    printf("*** M3EMEB29-04 *** O   K ***\n");
  else
    printf("*** M3EMEB29-04 *** N   G ***\n");
  }
 
 
  {
  int   x5 = 0;
  int   a5 = 3;
  x5 = px->arr[a5%=2];
  if(x5 == 2)
    printf("*** M3EMEB29-05 *** O   K ***\n");
  else
    printf("*** M3EMEB29-05 *** N   G ***\n");
  }
 
 
  {
  int   x6 = 0;
  int   a6 = 0;
  x6 = px->arr[a6+=1];
  if(x6 == 2)
    printf("*** M3EMEB29-06 *** O   K ***\n");
  else
    printf("*** M3EMEB29-06 *** N   G ***\n");
  }
 
 
  {
  int   x7 = 0;
  int   a7 = 2;
  x7 = px->arr[a7-=1];
  if(x7 == 2)
    printf("*** M3EMEB29-07 *** O   K ***\n");
  else
    printf("*** M3EMEB29-07 *** N   G ***\n");
  }
 
 
  {
  int   x8 = 0;
  int   a8 = 1;
  x8 = px->arr[a8<<=1];
  if(x8 == 3)
    printf("*** M3EMEB29-08 *** O   K ***\n");
  else
    printf("*** M3EMEB29-08 *** N   G ***\n");
  }
 
 
  {
  int   x9 = 0;
  int   a9 = 2;
  x9 = px->arr[a9>>=1];
  if(x9 == 2)
    printf("*** M3EMEB29-09 *** O   K ***\n");
  else
    printf("*** M3EMEB29-09 *** N   G ***\n");
  }
 
 
  {
  int   x0 = 0;
  int   a0 = 1;
  x0 = px->arr[a0&=1];
  if(x0 == 2)
    printf("*** M3EMEB29-10 *** O   K ***\n");
  else
    printf("*** M3EMEB29-10 *** N   G ***\n");
  }
  printf("*** M3EMEB29 TEST FOR G_EXMEMB *** THE END ***\n");
exit (0);
}
