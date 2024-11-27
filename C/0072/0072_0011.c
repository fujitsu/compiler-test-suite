#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    float x[10];
  }i400a,i400b,i400c,i400d,i400e;

  float        i4x = 0;
  float        i4y = 2;
  float        i4z = 1;
  const int    zzz = 5;
  int i,j,k;

  for (i=0,j=2,k=9;i<10;i++,j+=2,k-=2){
    i400a.x[i]=0;
    if(i==5) j=1;
    i400b.x[i]=j;
    if(i==5) k=10;
    i400c.x[i]=k;
    if(i<5) i400d.x[i]=5;
    else    i400d.x[i]=9;
    if(i<5) i400e.x[i]=2;
    else    i400e.x[i]=-2;
  }

  for (i=0;i<10;i++)
  {
    i400a.x[i] = i400d.x[i] * i400e.x[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=0;i<10;i++)
  {
    i400a.x[i] = i400b.x[i] / i4y;
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=0;i<10;i++)
  {
    i400a.x[i] = i + i400d.x[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=0;i<10;i++)
  {
    i400a.x[i] = i4y * zzz;
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=1;i<9;i++)
  {
    i400a.x[i] = i + i;
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=0;i<10;i++)
  {
    i400a.x[i] = i400b.x[zzz] - i400c.x[i];
  }
  printf("\n");
  printf("\n** TEST 6 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=0;i<10;i++)
  {
    i400a.x[i] = i400b.x[zzz] * i400c.x[9];
  }
  printf("\n");
  printf("\n** TEST 7 **\n");
  for (i=0;i<10;i++) printf("%f  ",i400a.x[i]);

  for (i=0;i<10;i++)
  {
    i4x = i400b.x[i] - i400c.x[i];
  }
  printf("\n");
  printf("\n** TEST 8 **\n");
  printf("%f  ",i4x);

  for (i=0;i<10;i++)
  {
    i400a.x[6] = i400b.x[i] - i400c.x[i];
  }
  printf("\n");
  printf("\n** TEST 9 **\n");
  printf("%f  ",i400a.x[6]);
  printf("\n");
exit (0);
}
