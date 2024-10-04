#include<stdio.h>
 

  static struct tag1 {
      int   arr[3];
      }cx ={1,2,3};
int main()
{
  printf("*** 22 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  x1 = cx.arr[1&&1];
  if(x1 == 2)
    printf("*** M3EMEB22-01 *** O   K ***\n");
  else
    printf("*** M3EMEB22-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = cx.arr[1||0];
  if(x2 == 2)
    printf("*** M3EMEB22-02 *** O   K ***\n");
  else
    printf("*** M3EMEB22-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = cx.arr[1<<1];
  if(x3 == 3)
    printf("*** M3EMEB22-03 *** O   K ***\n");
  else
    printf("*** M3EMEB22-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = cx.arr[2>>1];
  if(x4 == 2)
    printf("*** M3EMEB22-04 *** O   K ***\n");
  else
    printf("*** M3EMEB22-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = cx.arr[2==2];
  if(x5 == 2)
    printf("*** M3EMEB22-05 *** O   K ***\n");
  else
    printf("*** M3EMEB22-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = cx.arr[1!=2];
  if(x6 == 2)
    printf("*** M3EMEB22-06 *** O   K ***\n");
  else
    printf("*** M3EMEB22-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = cx.arr[1<2];
  if(x7 == 2)
    printf("*** M3EMEB22-07 *** O   K ***\n");
  else
    printf("*** M3EMEB22-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = cx.arr[2>1];
  if(x8 == 2)
    printf("*** M3EMEB22-08 *** O   K ***\n");
  else
    printf("*** M3EMEB22-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = cx.arr[2<=2];
  if(x9 == 2)
    printf("*** M3EMEB22-09 *** O   K ***\n");
  else
    printf("*** M3EMEB22-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = cx.arr[2>=2];
  if(x0 == 2)
    printf("*** M3EMEB22-10 *** O   K ***\n");
  else
    printf("*** M3EMEB22-10 *** N   G ***\n");
  }
  printf("*** M3EMEB22 TEST FOR G_EXMEMB *** THE END ***\n");
}
