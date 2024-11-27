#include<stdio.h>
void foo(double *a,int j) {
  int i;
  for (i=0;i<1024;++i) {
    a[i]=0;
  }
  if (j==1) {
    a[0] = 1;
  }
}

int main(void) {
  double a[1024];
  foo(a,1);
  puts("OK");
  return 0;
}
