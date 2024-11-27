#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  double     d800a[10]={0,0,0,0,0,0,0,0,0,0};
  double     d800b[10]={2,4,6,8,10,1,3,5,7,9};
  double     d800c[10]={9,7,5,3,1,10,8,6,4,2};
  double     d800d[10]={5,5,5,5,5,9,9,9,9,9};
  double     d800e[10]={2,2,2,2,2,2,2,2,2,2};
  double       d8x = 0;
  double       d8y = 2;
  double       d8z = 1;
  const int    zzz = 5;
  int i ;
  for (i=0;i<10;i++)
  {
    d800a[i] = d800d[i] = d800b[i] + d800c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f  ",d800d[i]);

  for (i=0;i<10;i++)
  {
    d800a[i] -= d800b[i] - d8y;
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);

  for (i=0;i<10;i++)
  {
    d800a[i] = i * d800d[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);

  for (i=0;i<10;i++)
  {
    d800a[i] = d8y / d8z + d800d[i] / d800e[i];
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);

  for (i=1;i<9;i++)
  {
    d800a[i] = i % i;
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);

  for (i=0;i<10;i++)
  {
    d800a[i] = d800b[zzz] + d800c[i];
  }
  printf("\n");
  printf("\n** TEST 6 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);

  for (i=0;i<10;i++)
  {
    d800a[i] = d800b[zzz] + d800c[9];
  }
  printf("\n");
  printf("\n** TEST 7 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);

  for (i=0;i<10;i++)
  {
    d8x = d800b[i] + d800c[i];
  }
  printf("\n");
  printf("\n** TEST 8 **\n");
  printf("%f  ",d8x);

  for (i=0;i<10;i++)
  {
    d800a[5] = d800b[i] - d800c[i];
  }
  printf("\n");
  printf("\n** TEST 9 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);
  printf("\n");
exit (0);
}
