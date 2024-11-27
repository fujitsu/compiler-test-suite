#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  float      i400a[10]={0,0,0,0,0,0,0,0,0,0};
  float      i400b[10]={2,4,6,8,10,1,3,5,7,9};
  float      i400c[10]={9,7,5,3,1,10,8,6,4,2};
  float      i400d[10]={5,5,5,5,5,9,9,9,9,9};
  float      i400e[10]={2,2,2,2,2,-2,-2,-2,-2,-2};
  float        i4x = 0;
  float        i4y = 2;
  float        i4z = 1;
  const int    zzz = 5;
  int i ;
  for (i=0;i<10;i++)
  {
    i400a[i] = i400d[i] * i400e[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=0;i<10;i++)
  {
    i400a[i] = i400b[i] / i4y;
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=0;i<10;i++)
  {
    i400a[i] = i + i400d[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=0;i<10;i++)
  {
    i400a[i] = i4y * zzz;
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=1;i<9;i++)
  {
    i400a[i] = i + i;
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=0;i<10;i++)
  {
    i400a[i] = i400b[zzz] - i400c[i];
  }
  printf("\n");
  printf("\n** TEST 6 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=0;i<10;i++)
  {
    i400a[i] = i400b[zzz] * i400c[9];
  }
  printf("\n");
  printf("\n** TEST 7 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a[i]);

  for (i=0;i<10;i++)
  {
    i4x = i400b[i] - i400c[i];
  }
  printf("\n");
  printf("\n** TEST 8 **\n");
  printf("%f  ",i4x);

  for (i=0;i<10;i++)
  {
    i400a[6] = i400b[i] - i400c[i];
  }
  printf("\n");
  printf("\n** TEST 9 **\n");
  printf("%f  ",i400a[6]);
  printf("\n");
exit (0);
}
