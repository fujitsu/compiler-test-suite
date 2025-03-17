
#include <stdio.h>
void sub01() {
#pragma omp taskyield
}

int main() {
#pragma omp parallel
  {
    sub01();
  }
  printf("pass\n");
  return 0;
}
