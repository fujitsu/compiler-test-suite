#include <stdio.h>
void foo(int i, int j) {
  int *i1, *i2;
  int k;

  i1 = &k;
  i2 = &k;
  if (i == j) {
    *i2 = 6;
  } else {
    *i1 = 4;
    *i2 = 2;
  }
  printf("%d\n", *i1);
}
int main() {
  foo(2,1);
}
