#include "stdio.h"

void sub1()
{
  float c[10]={0,0,0,0,0,0,0,0,0,0};
  int   x[10]={1,1,0,0,1,0,0,1,1,0},i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[i] = 3;
    }
  }
  for(i=0;i<10;i++)
    printf("%g ",c[i]);
  printf("\n");
}

void sub2()
{
  double c[10]={0,0,0,0,0,0,0,0,0,0};
  int   x[10]={1,1,0,0,1,0,0,1,1,0},i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[i] = 3;
    }
  }
  for(i=0;i<10;i++)
    printf("%g ",c[i]);
  printf("\n");
}
int main()
{
  sub1();
  sub2();
}
