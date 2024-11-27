#include <stdio.h>
#include <math.h>

int g0;

void foo(float f0, float f1) {
  float ans = 0.0;
  if (g0){
    ans = copysignf(f0, f1);
  }
  if (ans == -1.0)
    printf("OK\n");
  else
    printf("NG ans = %f\n", ans);
}
int main() {
  float f0, f1;
  f0 = 1.0;
  f1 = -2.0;
  g0 = 1.0;
  foo(f0, f1);
}
