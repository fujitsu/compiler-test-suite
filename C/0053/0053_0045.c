#include<stdio.h>
int main()
{
  static int    i1 = 1;
  static int    i2 = 2;
  static int   *pi1 = &i1;
  static int   *pi2 = &i2;
  int   *p1 = &i1;
  int   *p2 = &i2;
  int   *r;
  int  **pp = &pi1;
  static int array[2][2] = { 1, 2, 3, 4 };
  struct tag {
               int *t1;
               int *t2;
             };
  static struct tag tag1 = { &i1, &i2 };
  static struct tag *tag2 = &tag1;
  int func();

  int *a = array[1];
  int (*b)() = func;
  int *c = tag1.t1;
  int *d = tag2->t2;
  int *e = p1++;
  int *f = p2--;
  int *g = &i1;
  int *h = *pp;
  int *j = pi1+0;
  int *k = pi1-0;
  int *l = i1?pi1:pi2;
  int *m = r=pi1;
  int *n = r+=0;
  int *o = r-=0;
  int *p = (pi1+0,pi2+0);

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  if ( *a==3 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( (*b)()==3 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( *c==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( *d==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( *e==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( *f==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( *g==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( *h==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( *j==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( *k==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( *l==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( *m==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( *n==1 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( *o==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( *p==2 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

}

int func()
{
  return 3;
}
