#include<stdio.h>
 

  static int   arr[3] ={1,2,3},(*po)[3];
int main()
{
  printf("*** 16 TEST FOR G_EXMEMB *** STARTED ***\n");

  po = &arr;

  {
  int   x1 = 0;
  int   y  = 1;
  x1 = (*po)[y];
  if(x1 == 2)
    printf("*** M3EMEB16-01 *** O   K ***\n");
  else
    printf("*** M3EMEB16-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = (*po)[1];
  if(x2 == 2)
    printf("*** M3EMEB16-02 *** O   K ***\n");
  else
    printf("*** M3EMEB16-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = (*po)[2/2];
  if(x3 == 2)
    printf("*** M3EMEB16-03 *** O   K ***\n");
  else
    printf("*** M3EMEB16-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = (*po)[1*2];
  if(x4 == 3)
    printf("*** M3EMEB16-04 *** O   K ***\n");
  else
    printf("*** M3EMEB16-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = (*po)[3%2];
  if(x5 == 2)
    printf("*** M3EMEB16-05 *** O   K ***\n");
  else
    printf("*** M3EMEB16-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = (*po)[1+1];
  if(x6 == 3)
    printf("*** M3EMEB16-06 *** O   K ***\n");
  else
    printf("*** M3EMEB16-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = (*po)[2-1];
  if(x7 == 2)
    printf("*** M3EMEB16-07 *** O   K ***\n");
  else
    printf("*** M3EMEB16-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = (*po)[1&1];
  if(x8 == 2)
    printf("*** M3EMEB16-08 *** O   K ***\n");
  else
    printf("*** M3EMEB16-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = (*po)[1|0];
  if(x9 == 2)
    printf("*** M3EMEB16-09 *** O   K ***\n");
  else
    printf("*** M3EMEB16-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = (*po)[1^0];
  if(x0 == 2)
    printf("*** M3EMEB16-10 *** O   K ***\n");
  else
    printf("*** M3EMEB16-10 *** N   G ***\n");
  }
  printf("*** M3EMEB16 TEST FOR G_EXMEMB *** THE END ***\n");
}
