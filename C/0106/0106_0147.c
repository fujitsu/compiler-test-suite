#include "stdio.h"
int main()
{
  double r8a[10]={0,0,0,0,0,0,0,0,0,0};
  float  r4a[10]={0,0,0,0,0,0,0,0,0,0};
  long int i8a[10]={0,0,0,0,0,0,0,0,0,0};
  int i;

  for(i=0;i<10;i++) {
    i8a[i] = 1;
    r4a[i] = 1;
    r8a[i] = 1;
  }
  printf("%Ld %f %f \n",i8a[1],r4a[1],r8a[1]);
}

