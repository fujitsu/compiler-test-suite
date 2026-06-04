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
  int ans;
  ans = ((xxx != yyy) == 0);
  if (ans == 0) {
    printf("OK\n");
  } else {
    printf("NG ans=%d\n",ans);
  }
}
