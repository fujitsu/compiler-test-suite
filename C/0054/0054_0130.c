#include<stdio.h>
 

static struct tag1 {
    int   arr[5];
    }bx ={1,2,3,4,5};

static int   brr[2] ={0,1};

static struct tag2 {
    int  b1;
    }cx ={2},*px = &cx;
int main()
{
  printf("*** 25 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  int   a1 = 0;
  x1 = bx.arr[a1^=1];
  if(x1 == 2)
    printf("*** M3EMEB25-01 *** O   K ***\n");
  else
    printf("*** M3EMEB25-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = bx.arr[a2|=1];
  if(x2 == 2)
    printf("*** M3EMEB25-02 *** O   K ***\n");
  else
    printf("*** M3EMEB25-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = bx.arr[cx.b1];
  if(x3 == 3)
    printf("*** M3EMEB25-03 *** O   K ***\n");
  else
    printf("*** M3EMEB25-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = bx.arr[px->b1];
  if(x4 == 3)
    printf("*** M3EMEB25-04 *** O   K ***\n");
  else
    printf("*** M3EMEB25-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = bx.arr[brr[1]];
  if(x5 == 2)
    printf("*** M3EMEB25-05 *** O   K ***\n");
  else
    printf("*** M3EMEB25-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = bx.arr[1,2];
  if(x6 == 3)
    printf("*** M3EMEB25-06 *** O   K ***\n");
  else
    printf("*** M3EMEB25-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = bx.arr[(int) a7];
  if(x7 == 2)
    printf("*** M3EMEB25-07 *** O   K ***\n");
  else
    printf("*** M3EMEB25-07 *** N   G ***\n");
  }

  printf("*** M3EMEB25 TEST FOR G_EXMEMB *** THE END ***\n");
}
