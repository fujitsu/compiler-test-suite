#include <stdio.h>
int main() {
  printf("*** abort or __builtin_abort test ***\n");
  fflush(stdout);
  __builtin_abort();
}
