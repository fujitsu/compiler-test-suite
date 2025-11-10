#include <stdio.h>

int Func()
try {
  throw 1;
} catch (int) {
  return 1;
}
int main() {
  if (1==Func())
    printf("ok\n");
  else
    printf("ng\n");
}


