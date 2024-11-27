
#include <stdio.h>
void foo(double *a,double b) {
  int i;
  for (i=0;i<1024;++i) {
    a[i]=0;
  }
  if(b==1.0){
    a[0] = 1;
  }
}

int main(void) {
  double a[1024];
  foo(a,1.0);
  puts("OK");
  return 0;
}
