#include <stdio.h>

void sub(long int, long int);

int main() {
  long int xxx, yyy;
  xxx = 1;
  yyy = 2;
  sub(xxx, yyy);
  return 0;
}

void sub(long int xxx, long int yyy) {
  int ans;
  ans = ((xxx > yyy) != 0);
  if (ans == 0) {
    printf("OK\n");
  } else {
    printf("NG ans=%d\n",ans);
  }
}
