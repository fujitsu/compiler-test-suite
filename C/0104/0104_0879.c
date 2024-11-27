#include <stdio.h>
#include <math.h>

int g0;

void foo(int i0, int i1) {
  int ans;
  if (g0){
    ans = copysign(i0, i1);
  }
  if (ans == -1)
    printf("OK\n");
  else
    printf("NG ans = %d\n", ans);
}
int main() {
  int i0, i1;
  i0 = 1;
  i1 = -2;
  g0 = 1;
  foo(i0, i1);
}
