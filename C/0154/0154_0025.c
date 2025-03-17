#include <stdio.h>

void sub(int count, int a[]) {
  int i;

  for (i = 1; i < count; ++i) {
    a[i] = a[i] + a[i-1];
  }
}
int main() {
  int a[] = {1,3,5,7,9};

  sub(5, a);

  if (a[0] == 1 && a[1] == 4 && a[2] == 9 && a[3] == 16 && a[4] == 25) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d,%d,%d,%d,%d\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
