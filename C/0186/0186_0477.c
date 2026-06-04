#include <stdio.h>

void sub(float, float);

int main() {
  float xxx, yyy;
  xxx = 1.0;
  yyy = 2.0;
  sub(xxx, yyy);
  return 0;
}

void sub(float xxx, float yyy) {
  int ans1, ans2;
  ans1 = ((xxx == yyy) == 0);
  ans2 = ((xxx == yyy) == 0);
  if (ans1 == 1 && ans2 == 1) {
    printf("OK\n");
  } else {
    printf("NG ans=%d\n",ans1);
  }
}
