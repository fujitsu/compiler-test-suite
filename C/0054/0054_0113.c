#include<stdio.h>
 

  static int   arr[5] ={1,2,3,4,5};
int main()
{
  printf("*** 08 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  int   i1 = 0;
  x1 = (arr+1)[++i1];
  if(x1 == 3)
    printf("*** M3EMEB08-01 *** O   K ***\n");
  else
    printf("*** M3EMEB08-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  int   i2 = 2;
  x2 = (arr+1)[--i2];
  if(x2 == 3)
    printf("*** M3EMEB08-02 *** O   K ***\n");
  else
    printf("*** M3EMEB08-02 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  int   i4 = 1;
  int   *pt;
  pt = &i4;
  x4 = (arr+1)[*pt];
  if(x4 == 3)
    printf("*** M3EMEB08-03 *** O   K ***\n");
  else
    printf("*** M3EMEB08-03 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  int   i5 =1;
  x5 = (arr+1)[+i5];
  if(x5 == 3)
    printf("*** M3EMEB08-04 *** O   K ***\n");
  else
    printf("*** M3EMEB08-04 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  int   i7 = -2;
  x7 = (arr+1)[~i7];
  if(x7 == 3)
    printf("*** M3EMEB08-05 *** O   K ***\n");
  else
    printf("*** M3EMEB08-05 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  int   i8 = 0;
  x8 = (arr+1)[!i8];
  if(x8 == 3)
    printf("*** M3EMEB08-06 *** O   K ***\n");
  else
    printf("*** M3EMEB08-06 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = (arr+1)[(2>1)?1:0];
  if(x9 == 3)
    printf("*** M3EMEB08-07 *** O   K ***\n");
  else
    printf("*** M3EMEB08-07 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  char  i0 = 2;
  x0 = (arr+1)[sizeof i0];
  if(x0 == 3)
    printf("*** M3EMEB08-08 *** O   K ***\n");
  else
    printf("*** M3EMEB08-08 *** N   G ***\n");
  }
  printf("*** M3EMEB08 TEST FOR G_EXMEMB *** THE END ***\n");
}
