#include<stdio.h>
int main()
{
  int one = 1;
  int two = 2;
  int four = 4;
  int j;

  int a = one==1;
  int b = one!=1;
  int c = one&two;
  int d = one^two;
  int e = one|two;
  int f = one&&2;
  int g = one||2;
  int h = one?1:0;
  int i = j=one;
  int k = j*=8;
  int l = j/=2;
  int m = j%=3;
  int n = j+=4;
  int o = j-=3;
  int p = j<<=2;
  int q = j>>=3;
  int r = j&=two;
  int s = j^=one;
  int t = j|=two;
  int u = (1+2,3+4);

  printf("******************************\n");
  printf("*                            *\n");
  printf("*   TEST PROGRAM             *\n");
  printf("*                            *\n");
  printf("******************************\n");

  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==0 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c==0 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( d==3 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( e==3 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( f==1 )
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

  if ( i==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( k==8 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( l==4 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( m==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( n==5 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( o==2 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( p==8 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( q==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( r==0 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( s==1 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( t==3 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( u==7 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");

}
