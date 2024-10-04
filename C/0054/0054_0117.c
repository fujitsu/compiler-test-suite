#include<stdio.h>
 

  static int   arr[5] ={1,2,3,4,5};
int main()
{
  printf("*** 12 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  x1 = (arr-1)[1&&1];
  if(x1 == 1)
    printf("*** M3EMEB12-01 *** O   K ***\n");
  else
    printf("*** M3EMEB12-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = (arr-1)[1||0];
  if(x2 == 1)
    printf("*** M3EMEB12-02 *** O   K ***\n");
  else
    printf("*** M3EMEB12-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = (arr-1)[1<<1];
  if(x3 == 2)
    printf("*** M3EMEB12-03 *** O   K ***\n");
  else
    printf("*** M3EMEB12-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = (arr-1)[2>>1];
  if(x4 == 1)
    printf("*** M3EMEB12-04 *** O   K ***\n");
  else
    printf("*** M3EMEB12-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = (arr-1)[2==2];
  if(x5 == 1)
    printf("*** M3EMEB12-05 *** O   K ***\n");
  else
    printf("*** M3EMEB12-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = (arr-1)[1!=2];
  if(x6 == 1)
    printf("*** M3EMEB12-06 *** O   K ***\n");
  else
    printf("*** M3EMEB12-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = (arr-1)[1<2];
  if(x7 == 1)
    printf("*** M3EMEB12-07 *** O   K ***\n");
  else
    printf("*** M3EMEB12-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = (arr-1)[2>1];
  if(x8 == 1)
    printf("*** M3EMEB12-08 *** O   K ***\n");
  else
    printf("*** M3EMEB12-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = (arr-1)[2<=2];
  if(x9 == 1)
    printf("*** M3EMEB12-09 *** O   K ***\n");
  else
    printf("*** M3EMEB12-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = (arr-1)[2>=2];
  if(x0 == 1)
    printf("*** M3EMEB12-10 *** O   K ***\n");
  else
    printf("*** M3EMEB12-10 *** N   G ***\n");
  }
  printf("*** M3EMEB12 TEST FOR G_EXMEMB *** THE END ***\n");
}
