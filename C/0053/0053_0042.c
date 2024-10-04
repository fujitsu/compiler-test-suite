#include<stdio.h>
int main()
{
  static int array[5] = { 1, 2, 3, 4, 5 };
  int func();
  struct tag {
               int t1;
               int t2;
             };
  static struct tag tag1 = { 1, 2 };
  static struct tag *tag2 = &tag1;
  int one = 1;
  int four = 4;
  int *point = &one;

  int a = array[2];
  int b = func();
  int c = tag1.t1;
  int d = tag2->t2;
  int e = one++;
  int f = one--;
  int g = *point;
  int h = +one;
  int i = -one;
  int j = ~one;
  int k = !one;
  int m = 2*3;
  int n = 8/2;
  int o = 8%3;
  int p = 1+2;
  int q = 5-3;
  int r = one<<3;
  int s = four>>1;
  int t = one<5;
  int u = four<=4;
  int v = four>2;
  int w = one>=1;

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  if ( a==3 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==3 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( d==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( e==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( f==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( g==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( h==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( i==-1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( j==-2 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( k==0 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( m==6 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( n==4 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( o==2 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( p==3 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( q==2 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( r==8 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( s==2 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( t==1 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( u==1 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");

  if ( v==1 )
    printf("TEST21 --> OK \n");
  else
    printf("TEST21 --> NG \n");

  if ( w==1 )
    printf("TEST22 --> OK \n");
  else
    printf("TEST22 --> NG \n");

}

int func()
{
  return 3;
}
