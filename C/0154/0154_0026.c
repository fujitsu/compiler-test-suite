#include <stdio.h>

void sub(int count, long a[]) {
  int i;

  for (i = 1; i < count; ++i) {
    a[i] = a[i] + a[i-1];
  }
}
int main() {
  long a[] = {1l,3l,5l,7l,9l};

  sub(5, a);

  if (a[0] == 1l && a[1] == 4l && a[2] == 9l && a[3] == 16l && a[4] == 25l) {
    puts("OK");
  } else {
    puts("NG");
    printf("%ld,%ld,%ld,%ld,%ld\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
