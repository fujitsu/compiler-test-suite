#include<stdio.h>
 

  static struct tag1 {
      int   arr[3];
      }cx ={1,2,3},*px = &cx;
int main()
{
  printf("*** 27 TEST FOR G_EXMEMB *** STARTED ***\n");

  {
  int   x1 = 0;
  x1 = px->arr[1&&1];
  if(x1 == 2)
    printf("*** M3EMEB27-01 *** O   K ***\n");
  else
    printf("*** M3EMEB27-01 *** N   G ***\n");
  }

  {
  int   x2 = 0;
  x2 = px->arr[1||0];
  if(x2 == 2)
    printf("*** M3EMEB27-02 *** O   K ***\n");
  else
    printf("*** M3EMEB27-02 *** N   G ***\n");
  }

  {
  int   x3 = 0;
  x3 = px->arr[1<<1];
  if(x3 == 3)
    printf("*** M3EMEB27-03 *** O   K ***\n");
  else
    printf("*** M3EMEB27-03 *** N   G ***\n");
  }

  {
  int   x4 = 0;
  x4 = px->arr[2>>1];
  if(x4 == 2)
    printf("*** M3EMEB27-04 *** O   K ***\n");
  else
    printf("*** M3EMEB27-04 *** N   G ***\n");
  }

  {
  int   x5 = 0;
  x5 = px->arr[2==2];
  if(x5 == 2)
    printf("*** M3EMEB27-05 *** O   K ***\n");
  else
    printf("*** M3EMEB27-05 *** N   G ***\n");
  }

  {
  int   x6 = 0;
  x6 = px->arr[1!=2];
  if(x6 == 2)
    printf("*** M3EMEB27-06 *** O   K ***\n");
  else
    printf("*** M3EMEB27-06 *** N   G ***\n");
  }

  {
  int   x7 = 0;
  x7 = px->arr[1<2];
  if(x7 == 2)
    printf("*** M3EMEB27-07 *** O   K ***\n");
  else
    printf("*** M3EMEB27-07 *** N   G ***\n");
  }

  {
  int   x8 = 0;
  x8 = px->arr[2>1];
  if(x8 == 2)
    printf("*** M3EMEB27-08 *** O   K ***\n");
  else
    printf("*** M3EMEB27-08 *** N   G ***\n");
  }

  {
  int   x9 = 0;
  x9 = px->arr[2<=2];
  if(x9 == 2)
    printf("*** M3EMEB27-09 *** O   K ***\n");
  else
    printf("*** M3EMEB27-09 *** N   G ***\n");
  }

  {
  int   x0 = 0;
  x0 = px->arr[2>=2];
  if(x0 == 2)
    printf("*** M3EMEB27-10 *** O   K ***\n");
  else
    printf("*** M3EMEB27-10 *** N   G ***\n");
  }
  printf("*** M3EMEB27 TEST FOR G_EXMEMB *** THE END ***\n");
}
