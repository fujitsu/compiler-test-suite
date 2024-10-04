#include<stdio.h>
 

static int   arr[5] ={1,2,3,4,5},(*po)[5];

static int   brr[2] ={0,1};

static struct tag {
    int  b1;
    }cx ={2},*px = &cx;
int main()
{
  printf("*** 20 TEST FOR G_EXMEMB *** STARTED ***\n");

  po = &arr;

  {
  int   x1 = 0;
  int   a1 = 0;
  x1 = (*po)[a1^=1];
  if(x1 == 2)
    printf("*** M3EMEB20-01 *** O   K ***\n");
  else
    printf("*** M3EMEB20-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  int   a2 = 1;
  x2 = (*po)[a2|=1];
  if(x2 == 2)
    printf("*** M3EMEB20-02 *** O   K ***\n");
  else
    printf("*** M3EMEB20-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = (*po)[cx.b1];
  if(x3 == 3)
    printf("*** M3EMEB20-03 *** O   K ***\n");
  else
    printf("*** M3EMEB20-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = (*po)[px->b1];
  if(x4 == 3)
    printf("*** M3EMEB20-04 *** O   K ***\n");
  else
    printf("*** M3EMEB20-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = (*po)[brr[1]];
  if(x5 == 2)
    printf("*** M3EMEB20-05 *** O   K ***\n");
  else
    printf("*** M3EMEB20-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = (*po)[1,2];
  if(x6 == 3)
    printf("*** M3EMEB20-06 *** O   K ***\n");
  else
    printf("*** M3EMEB20-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  char  a7 = 1;
  x7 = (*po)[(int) a7];
  if(x7 == 2)
    printf("*** M3EMEB20-07 *** O   K ***\n");
  else
    printf("*** M3EMEB20-07 *** N   G ***\n");
  }

  printf("*** M3EMEB20 TEST FOR G_EXMEMB *** THE END ***\n");
}
