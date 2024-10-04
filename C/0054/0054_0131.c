#include<stdio.h>
 

  static struct tag1 {
      int   arr[3];
      }cx ={1,2,3},*px = &cx;
int main()
{
  printf("*** 26 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  int   y  = 1;
  x1 = px->arr[y];
  if(x1 == 2)
    printf("*** M3EMEB26-01 *** O   K ***\n");
  else
    printf("*** M3EMEB26-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = px->arr[1];
  if(x2 == 2)
    printf("*** M3EMEB26-02 *** O   K ***\n");
  else
    printf("*** M3EMEB26-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = px->arr[2/2];
  if(x3 == 2)
    printf("*** M3EMEB26-03 *** O   K ***\n");
  else
    printf("*** M3EMEB26-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = px->arr[1*2];
  if(x4 == 3)
    printf("*** M3EMEB26-04 *** O   K ***\n");
  else
    printf("*** M3EMEB26-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = px->arr[3%2];
  if(x5 == 2)
    printf("*** M3EMEB26-05 *** O   K ***\n");
  else
    printf("*** M3EMEB26-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = px->arr[1+1];
  if(x6 == 3)
    printf("*** M3EMEB26-06 *** O   K ***\n");
  else
    printf("*** M3EMEB26-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = px->arr[2-1];
  if(x7 == 2)
    printf("*** M3EMEB26-07 *** O   K ***\n");
  else
    printf("*** M3EMEB26-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = px->arr[1&1];
  if(x8 == 2)
    printf("*** M3EMEB26-08 *** O   K ***\n");
  else
    printf("*** M3EMEB26-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = px->arr[1|0];
  if(x9 == 2)
    printf("*** M3EMEB26-09 *** O   K ***\n");
  else
    printf("*** M3EMEB26-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = px->arr[1^0];
  if(x0 == 2)
    printf("*** M3EMEB26-10 *** O   K ***\n");
  else
    printf("*** M3EMEB26-10 *** N   G ***\n");
  }
  printf("*** M3EMEB26 TEST FOR G_EXMEMB *** THE END ***\n");
}
