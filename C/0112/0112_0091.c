#include "stdio.h"

void sub1()
{
  char c[10]={0,0,0,0,0,0,0,0,0,0};
  char d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%d ",c[2]);
  printf("\n");
}
void sub2()
{
  short c[10]={0,0,0,0,0,0,0,0,0,0};
  short d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
    printf("%d ",c[2]);
  printf("\n");
}
void sub3()
{
  int c[10]={0,0,0,0,0,0,0,0,0,0};
  int d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
    printf("%d ",c[2]);
  printf("\n");
}
void sub4()
{
  long long int c[10]={0,0,0,0,0,0,0,0,0,0};
  long long int d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
    printf("%Ld ",c[2]);
  printf("\n");
}
int main()
{
  sub1();
  sub2();
  sub3();
  sub4();
}
