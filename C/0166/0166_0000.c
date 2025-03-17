#include <stdio.h>
int main() {
  int i,j;
  double a[100];
  for (i=0; i<100; ++i) {
    a[i] = i;
  }
  if (a[30]==30) {
    printf("ok\n");
  }
  else {
    printf("ng ... %lf\n",a[30]);
  }
}
