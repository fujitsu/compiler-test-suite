#include<stdio.h>
 

  static int   arr[3] ={1,2,3};
int main()
{
  printf("*** 03 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  int   i1 = 0;
  x1 = arr[++i1];
  if(x1 == 2)
    printf("*** M3EMEB03-01 *** O   K ***\n");
  else
    printf("*** M3EMEB03-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  int   i2 = 2;
  x2 = arr[--i2];
  if(x2 == 2)
    printf("*** M3EMEB03-02 *** O   K ***\n");
  else
    printf("*** M3EMEB03-02 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  int   i4 = 1;
  int   *pt;
  pt = &i4;
  x4 = arr[*pt];
  if(x4 == 2)
    printf("*** M3EMEB03-03 *** O   K ***\n");
  else
    printf("*** M3EMEB03-03 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  int   i5 =1;
  x5 = arr[+i5];
  if(x5 == 2)
    printf("*** M3EMEB03-04 *** O   K ***\n");
  else
    printf("*** M3EMEB03-04 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  int   i7 = -2;
  x7 = arr[~i7];
  if(x7 == 2)
    printf("*** M3EMEB03-05 *** O   K ***\n");
  else
    printf("*** M3EMEB03-05 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  int   i8 = 0;
  x8 = arr[!i8];
  if(x8 == 2)
    printf("*** M3EMEB03-06 *** O   K ***\n");
  else
    printf("*** M3EMEB03-06 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = arr[(2>1)?1:0];
  if(x9 == 2)
    printf("*** M3EMEB03-07 *** O   K ***\n");
  else
    printf("*** M3EMEB03-07 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  char  i0 = 2;
  x0 = arr[sizeof i0];
  if(x0 == 2)
    printf("*** M3EMEB03-08 *** O   K ***\n");
  else
    printf("*** M3EMEB03-08 *** N   G ***\n");
  }
  printf("*** M3EMEB03 TEST FOR G_EXMEMB *** THE END ***\n");
}
