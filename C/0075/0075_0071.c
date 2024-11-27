#include <stdio.h>
int s,r;

int sub() {
  int i;
  int m;
  volatile int t;

  t = 1;
  m = t;
  for (i=0;i<1;i++) {
    if (m) s = s + t;
    t = t + 1;
    if (m) r = r + t;
    printf("%d,%d\n",s,r);
  }
}
int main() {
  int i;

  s = 0;
  r = 0;
  sub();
}
