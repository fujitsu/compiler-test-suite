#include "stdio.h"

void sub1()
{
  long long int c[10]={0,0,0,0,0,0,0,0,0,0};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[i] = 3;
    }
  }
  for(i=0;i<10;i++)
    printf("%Ld ",c[i]);
  printf("\n");
}

void sub2()
{
  unsigned long long int c[10]={0,0,0,0,0,0,0,0,0,0};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[i] = 3;
    }
  }
  for(i=0;i<10;i++)
    printf("%Lu ",c[i]);
  printf("\n");
}
int main()
{
  sub1();
  sub2();
}
