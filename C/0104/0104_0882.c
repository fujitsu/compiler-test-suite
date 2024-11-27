#include <stdio.h>
#include <math.h>

int g0;

void foo(float f0) {
  float ans = 0.0;
  if (g0){
    ans = copysignf(f0, 1.0);
  }
  if (ans == 2.0)
    printf("OK\n");
  else
    printf("NG ans = %f\n", ans);
}
int main() {
  float f0;
  f0 = 2.0;
  g0 = 1.0;
  foo(f0);
}
