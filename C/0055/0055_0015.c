#include <stdio.h>

int foo(int a, int b, int res) {
  int i;
  for (i=0; i<b; i++) {
    if (a < b) {
      a = a + i;
    }
  }
  res = a + b;
  return res;
}
int main() {
  printf("%s\n",foo(1,5,3) == 12 ? "OK":"NG");
}
