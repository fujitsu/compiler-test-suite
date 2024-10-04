#include<stdio.h>
 

static struct tag1 {
    int   arr[5];
    }bx ={1,2,3,4,5},*pt = &bx;

static int   brr[2] ={0,1};

static struct tag2 {
    int  b1;
    }cx ={2},*px = &cx;
int main()
{
  printf("*** 30 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  int   a1 = 0;
  x1 = pt->arr[a1^=1];
  if(x1 == 2)
    printf("*** M3EMEB30-01 *** O   K ***\n");
  else
    printf("*** M3EMEB30-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = pt->arr[a2|=1];
  if(x2 == 2)
    printf("*** M3EMEB30-02 *** O   K ***\n");
  else
    printf("*** M3EMEB30-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = pt->arr[cx.b1];
  if(x3 == 3)
    printf("*** M3EMEB30-03 *** O   K ***\n");
  else
    printf("*** M3EMEB30-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = pt->arr[px->b1];
  if(x4 == 3)
    printf("*** M3EMEB30-04 *** O   K ***\n");
  else
    printf("*** M3EMEB30-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = pt->arr[brr[1]];
  if(x5 == 2)
    printf("*** M3EMEB30-05 *** O   K ***\n");
  else
    printf("*** M3EMEB30-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = pt->arr[1,2];
  if(x6 == 3)
    printf("*** M3EMEB30-06 *** O   K ***\n");
  else
    printf("*** M3EMEB30-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = pt->arr[(int) a7];
  if(x7 == 2)
    printf("*** M3EMEB30-07 *** O   K ***\n");
  else
    printf("*** M3EMEB30-07 *** N   G ***\n");
  }

  printf("*** M3EMEB30 TEST FOR G_EXMEMB *** THE END ***\n");
}
