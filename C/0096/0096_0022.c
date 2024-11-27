#include <stdio.h>
static int sub() {
  return 10;
}
int main() {
  int i, n;
  n = sub();
  for (i=0; i<n; ++i) {
  }
  printf("%d\n", i);
}
