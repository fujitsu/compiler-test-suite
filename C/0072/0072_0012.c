#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    double x[10];
  }d800a,d800b,d800c,d800d,d800e;

  double       d8x = 0;
  double       d8y = 2;
  double       d8z = 1;
  const int    zzz = 5;
  int i,j,k,ks;

  for (i=0,j=2,k=9;i<10;i++,j+=2,k-=2){
    d800a.x[i]=0;
    if(i==5) j=1;
    d800b.x[i]=j;
    if(i==5) k=10;
    d800c.x[i]=k;
    if(i<5) d800d.x[i]=5;
    else    d800d.x[i]=9;
    d800e.x[i]=2;
  }

  for (i=0;i<10;i++)
  {
    d800a.x[i] = d800d.x[i] = d800b.x[i] + d800c.x[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f  ",d800d.x[i]);

  for (i=0;i<10;i++)
  {
    d800a.x[i] -= d800b.x[i] - d8y;
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);

  for (i=0;i<10;i++)
  {
    d800a.x[i] = i * d800d.x[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);

  for (i=0;i<10;i++)
  {
    d800a.x[i] = d8y / d8z + d800d.x[i] / d800e.x[i];
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);

  for (i=1;i<9;i++)
  {
    d800a.x[i] = i % i;
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);

  for (i=0;i<10;i++)
  {
    d800a.x[i] = d800b.x[zzz] + d800c.x[i];
  }
  printf("\n");
  printf("\n** TEST 6 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);

  for (i=0;i<10;i++)
  {
    d800a.x[i] = d800b.x[zzz] + d800c.x[9];
  }
  printf("\n");
  printf("\n** TEST 7 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);

  for (i=0;i<10;i++)
  {
    d8x = d800b.x[i] + d800c.x[i];
  }
  printf("\n");
  printf("\n** TEST 8 **\n");
  printf("%f  ",d8x);

  for (i=0;i<10;i++)
  {
    d800a.x[5] = d800b.x[i] - d800c.x[i];
  }
  printf("\n");
  printf("\n** TEST 9 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a.x[i]);
  printf("\n");
exit (0);
}
