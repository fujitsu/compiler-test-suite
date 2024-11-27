#include "stdio.h"

void sub1()
{
  unsigned char c[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned char d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%u ",c[2]);
  printf("\n");
}
void sub2()
{
  unsigned short c[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned short d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%u ",c[2]);
  printf("\n");
}
void sub3()
{
  unsigned int c[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%u ",c[2]);
  printf("\n");
}
void sub4()
{
  unsigned long long int c[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned long long int d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%Lu ",c[2]);
  printf("\n");
}
int main()
{
  sub1();
  sub2();
  sub3();
  sub4();
}
