#include <stdio.h>

void sub(int, int);

int main() {
  int xxx, yyy;
  xxx = 1;
  yyy = 2;
  sub(xxx, yyy);
  return 0;
}

void sub(int xxx, int yyy) {
  int ans;
  ans = ((xxx > yyy) == 1);
  if (ans == 0) {
    printf("OK\n");
  } else {
    printf("NG ans=%d\n",ans);
  }
}
