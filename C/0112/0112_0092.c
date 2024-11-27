#include "stdio.h"

void sub1()
{
  float c[10]={0,0,0,0,0,0,0,0,0,0};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  float d[10]={1,2,3,4,5,6,7,8,9,10};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%g ",c[2]);
  printf("\n");

}
void sub2()
{
  double c[10]={0,0,0,0,0,0,0,0,0,0};
  double d[10]={1,2,3,4,5,6,7,8,9,10};
  float x[10]={1,1,0,0,1,0,0,1,1,0};
  int i;
  for(i=0;i<10;i++) {
    if (x[i] == 1) {
      c[2] = d[i];
    }
  }
  printf("%g ",c[2]);
  printf("\n");
}
int main()
{
  sub1();
  sub2();
}
