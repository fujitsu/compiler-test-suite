#include "stdio.h"

void sub1()
{
  float c[5][5];
  int   x[5]={1,1,1,1,1},i;
  for(i=0;i<5;i++) {
    if (x[i] == 1) {
      c[1][i] = 3;
      c[2][i] = 3;
    }
  }
  for(i=0;i<5;i++)
    printf("%g %g ",c[1][i],c[2][i]);
  printf("\n");
}

void sub2()
{
  double c[5][5];
  int   x[5]={1,1,1,1,1},i;
  for(i=0;i<5;i++) {
    if (x[i] == 1) {
      c[1][i] = 3;
      c[2][i] = 3;
    }
  }
  for(i=0;i<5;i++)
    printf("%g %g ",c[1][i],c[2][i]);
  printf("\n");
}
int main()
{
  sub1();
  sub2();
}
