#include<stdio.h>
 

  static int  arr[3][3]={1,2,3,4,5,6,7,8,9};
int main()
{
  printf("*** 31 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  int   y  = 1;
  x1 = arr[1][y];
  if(x1 == 5)
    printf("*** M3EMEB31-01 *** O   K ***\n");
  else
    printf("*** M3EMEB31-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = arr[1][1];
  if(x2 == 5)
    printf("*** M3EMEB31-02 *** O   K ***\n");
  else
    printf("*** M3EMEB31-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = arr[1][2/2];
  if(x3 == 5)
    printf("*** M3EMEB31-03 *** O   K ***\n");
  else
    printf("*** M3EMEB31-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = arr[1][1*2];
  if(x4 == 6)
    printf("*** M3EMEB31-04 *** O   K ***\n");
  else
    printf("*** M3EMEB31-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = arr[1][3%2];
  if(x5 == 5)
    printf("*** M3EMEB31-05 *** O   K ***\n");
  else
    printf("*** M3EMEB31-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = arr[1][1+1];
  if(x6 == 6)
    printf("*** M3EMEB31-06 *** O   K ***\n");
  else
    printf("*** M3EMEB31-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = arr[1][2-1];
  if(x7 == 5)
    printf("*** M3EMEB31-07 *** O   K ***\n");
  else
    printf("*** M3EMEB31-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = arr[1][1&1];
  if(x8 == 5)
    printf("*** M3EMEB31-08 *** O   K ***\n");
  else
    printf("*** M3EMEB31-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = arr[1][1|0];
  if(x9 == 5)
    printf("*** M3EMEB31-09 *** O   K ***\n");
  else
    printf("*** M3EMEB31-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = arr[1][1^0];
  if(x0 == 5)
    printf("*** M3EMEB31-10 *** O   K ***\n");
  else
    printf("*** M3EMEB31-10 *** N   G ***\n");
  }
  printf("*** M3EMEB31 TEST FOR G_EXMEMB *** THE END ***\n");
}
