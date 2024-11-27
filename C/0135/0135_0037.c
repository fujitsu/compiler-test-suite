#include <stdlib.h>

#include <stdio.h>
#include <math.h>
int main()
{
  float      a[100],b[100];
  int        i,kk;

  for(i=0;i<100;i++) {
    a[i]=1.1;
    b[i]=3.2;
  }
  for(i=0;i<99;i++) {
    kk=i+a[i];
    b[i]+=(b[kk]+i);
  }
  for(i=0;i<100;i++) printf("%f ",a[i]);
  printf("\n");
  for(i=0;i<100;i++) printf("%f ",b[i]);
  printf("\n");
  exit(0);
}
