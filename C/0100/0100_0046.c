#include <stdio.h>

int main(void) {
  int i,n;
  int a[100];
  n = 100;
  for(i=0;i<n;++i) {
    a[i] = 1;
  }

  for(i=1;i<n;++i) {
    a[i--] =7;
    ++i;
  }
  printf("%d %d\n",a[0],a[1]);
}
