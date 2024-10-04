#include<stdio.h>
 

  static int   arr[5] ={1,2,3,4,5};
int main()
{
  printf("*** 07 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  x1 = (arr+1)[1&&1];
  if(x1 == 3)
    printf("*** M3EMEB07-01 *** O   K ***\n");
  else
    printf("*** M3EMEB07-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = (arr+1)[1||0];
  if(x2 == 3)
    printf("*** M3EMEB07-02 *** O   K ***\n");
  else
    printf("*** M3EMEB07-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = (arr+1)[1<<1];
  if(x3 == 4)
    printf("*** M3EMEB07-03 *** O   K ***\n");
  else
    printf("*** M3EMEB07-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = (arr+1)[2>>1];
  if(x4 == 3)
    printf("*** M3EMEB07-04 *** O   K ***\n");
  else
    printf("*** M3EMEB07-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = (arr+1)[2==2];
  if(x5 == 3)
    printf("*** M3EMEB07-05 *** O   K ***\n");
  else
    printf("*** M3EMEB07-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = (arr+1)[1!=2];
  if(x6 == 3)
    printf("*** M3EMEB07-06 *** O   K ***\n");
  else
    printf("*** M3EMEB07-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = (arr+1)[1<2];
  if(x7 == 3)
    printf("*** M3EMEB07-07 *** O   K ***\n");
  else
    printf("*** M3EMEB07-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = (arr+1)[2>1];
  if(x8 == 3)
    printf("*** M3EMEB07-08 *** O   K ***\n");
  else
    printf("*** M3EMEB07-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = (arr+1)[2<=2];
  if(x9 == 3)
    printf("*** M3EMEB07-09 *** O   K ***\n");
  else
    printf("*** M3EMEB07-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = (arr+1)[2>=2];
  if(x0 == 3)
    printf("*** M3EMEB07-10 *** O   K ***\n");
  else
    printf("*** M3EMEB07-10 *** N   G ***\n");
  }
  printf("*** M3EMEB07 TEST FOR G_EXMEMB *** THE END ***\n");
}
