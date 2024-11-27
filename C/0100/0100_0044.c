#include <stdio.h>

int main(void) {
  int i,n;
  int a[100];
  n = 100;
  for(i=0;i<n;++i) {
    a[i] = 1;
  }

  for(i=0;i<n;++i) {
    i=i+2;
    a[--i] =7;
  }
  printf("%d %d\n",a[0],a[1]);
}
